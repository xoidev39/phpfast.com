(function() {
    // Polyfill cho Set
    if (typeof Set !== 'function') {
        window.Set = function() {
            this.items = [];
        };
        Set.prototype.add = function(item) {
            if (this.items.indexOf(item) === -1) {
                this.items.push(item);
            }
            return this;
        };
        Set.prototype.has = function(item) {
            return this.items.indexOf(item) !== -1;
        };
        Set.prototype.delete = function(item) {
            var index = this.items.indexOf(item);
            if (index !== -1) {
                this.items.splice(index, 1);
                return true;
            }
            return false;
        };
        Set.prototype.clear = function() {
            this.items = [];
        };
        Object.defineProperty(Set.prototype, 'size', {
            get: function() {
                return this.items.length;
            }
        });
        Set.prototype.forEach = function(callback, thisArg) {
            for (var i = 0; i < this.items.length; i++) {
                callback.call(thisArg, this.items[i], this.items[i], this);
            }
        };
        console.warn('Polyfill Set has been applied. Some methods may not be fully supported yet.');
    }
    // Polyfill cho NodeList.prototype.forEach
    if (window.NodeList && !NodeList.prototype.forEach) {
        NodeList.prototype.forEach = Array.prototype.forEach;
    }
})();

(function(global) {
    'use strict';

    var jFast = function(selector) {
        if (!(this instanceof jFast)) {
            return new jFast(selector);
        }
    
        if (!selector) {
            this.elements = [];
        } else if (typeof selector === 'string') {
            this.elements = document.querySelectorAll(selector);
        } else if (selector instanceof NodeList || Array.isArray(selector)) {
            this.elements = selector;
        } else if (selector instanceof HTMLElement || selector === window || selector === document) {
            this.elements = [selector];
        } else if (typeof selector === 'function') {
            // Document ready
            if (document.readyState === 'complete' || document.readyState !== 'loading') {
                selector();
            } else {
                document.addEventListener('DOMContentLoaded', selector);
            }
            this.elements = [];
        } else {
            this.elements = [];
        }
    };

    jFast.prototype.each = function(callback) {
        Array.prototype.forEach.call(this.elements, callback);
        return this;
    };

    // CSS Manipulation
    jFast.prototype.addClass = function(className) {
        var classes = className.split(' ');
        return this.each(function(element) {
            element.classList.add(...classes);
        });
    };
    
    jFast.prototype.removeClass = function(className) {
        var classes = className.split(' ');
        return this.each(function(element) {
            element.classList.remove(...classes);
        });
    };    

    jFast.prototype.toggleClass = function(className, state) {
        var classes = className.split(' ');
        return this.each(function(element) {
            classes.forEach(function(cls) {
                if (typeof state === 'boolean') {
                    element.classList.toggle(cls, state);
                } else {
                    element.classList.toggle(cls);
                }
            });
        });
    };
    
    jFast.prototype.one = function(events, selector, handler) {
        if (typeof selector === 'function') {
            handler = selector;
            selector = null;
        }
        var eventList = events.split(' ');
    
        return this.each(function(element) {
            eventList.forEach(function(event) {
                var onceHandler = function(e) {
                    if (selector) {
                        var target = e.target;
                        while (target && target !== element) {
                            if (target.matches(selector)) {
                                handler.call(target, e);
                                element.removeEventListener(event, onceHandler);
                                break;
                            }
                            target = target.parentNode;
                        }
                        if (element.matches(selector)) {
                            handler.call(element, e);
                            element.removeEventListener(event, onceHandler);
                        }
                    } else {
                        handler.call(element, e);
                        element.removeEventListener(event, onceHandler);
                    }
                };
                element.addEventListener(event, onceHandler);
            });
        });
    };
    
    jFast.prototype.before = function(content) {
        return this.each(function(element) {
            if (typeof content === 'string') {
                element.insertAdjacentHTML('beforebegin', content);
            } else if (content instanceof HTMLElement) {
                element.parentNode.insertBefore(content, element);
            } else if (content instanceof jFast || content instanceof NodeList || Array.isArray(content)) {
                Array.prototype.forEach.call(content.elements || content, function(child) {
                    element.parentNode.insertBefore(child, element);
                });
            }
        });
    };
    
    jFast.prototype.after = function(content) {
        return this.each(function(element) {
            if (typeof content === 'string') {
                element.insertAdjacentHTML('afterend', content);
            } else if (content instanceof HTMLElement) {
                element.parentNode.insertBefore(content, element.nextSibling);
            } else if (content instanceof jFast || content instanceof NodeList || Array.isArray(content)) {
                Array.prototype.forEach.call(content.elements || content, function(child) {
                    element.parentNode.insertBefore(child, element.nextSibling);
                });
            }
        });
    };
    

    jFast.prototype.hasClass = function(className) {
        return Array.prototype.some.call(this.elements, function(element) {
            return element.classList.contains(className);
        });
    };

    jFast.prototype.attr = function(name, value) {
        if (value === undefined) {
            if (this.elements[0]) {
                return this.elements[0].getAttribute(name);
            } else {
                return undefined;
            }
        } else {
            return this.each(function(element) {
                element.setAttribute(name, value);
            });
        }
    };

    jFast.prototype.removeAttr = function(name) {
        return this.each(function(element) {
            element.removeAttribute(name);
        });
    };

    jFast.prototype.text = function(value) {
        if (value === undefined) {
            if (this.elements[0]) {
                return this.elements[0].textContent;
            } else {
                return '';
            }
        } else {
            return this.each(function(element) {
                element.textContent = value;
            });
        }
    };

    jFast.prototype.html = function(value) {
        if (value === undefined) {
            if (this.elements[0]) {
                return this.elements[0].innerHTML;
            } else {
                return '';
            }
        } else {
            return this.each(function(element) {
                element.innerHTML = value;
            });
        }
    };

    // Data Attributes
    jFast.prototype.data = function(key, value) {
        if (value === undefined) {
            if (this.elements[0]) {
                return this.elements[0].dataset[key] || this.elements[0].getAttribute('data-' + key);
            } else {
                return undefined;
            }
        } else {
            return this.each(function(element) {
                element.dataset[key] = value;
            });
        }
    };

    jFast.prototype.css = function(property, value) {
        if (typeof property === 'string') {
            if (value === undefined) {
                if (this.elements[0]) {
                    return getComputedStyle(this.elements[0])[property];
                } else {
                    return undefined;
                }
            } else {
                return this.each(function(element) {
                    element.style[property] = value;
                });
            }
        } else if (typeof property === 'object') {
            return this.each(function(element) {
                for (var prop in property) {
                    if (property.hasOwnProperty(prop)) {
                        element.style[prop] = property[prop];
                    }
                }
            });
        }
    };

    // Define an internal storage for event handlers
    var eventHandlers = new WeakMap();

    // Utility function for safe matches
    function matchesSelector(element, selector) {
        if (element && element.nodeType === 1) { // Element node
            if (element.matches) {
                return element.matches(selector);
            } else if (element.msMatchesSelector) { // IE
                return element.msMatchesSelector(selector);
            } else if (element.webkitMatchesSelector) { // WebKit
                return element.webkitMatchesSelector(selector);
            } else if (element.mozMatchesSelector) { // Firefox
                return element.mozMatchesSelector(selector);
            } else {
                // Fallback for very old browsers
                var matches = (element.document || element.ownerDocument).querySelectorAll(selector);
                var i = matches.length;
                while (--i >= 0 && matches.item(i) !== element) {}
                return i > -1;
            }
        }
        return false;
    }

    jFast.prototype.on = function(events, selector, handler, useCapture) {
        if (typeof selector === 'function') {
            useCapture = handler;
            handler = selector;
            selector = null;
        }
        var eventList = events.split(' ');
    
        return this.each(function(element) {
            eventList.forEach(function(event) {
                var eventKey = event + (selector ? '_' + selector : '');
                var handlers = eventHandlers.get(element) || {};
    
                var listener = function(e) {
                    if (selector) {
                        var target = e.target;
                        while (target && target !== element) {
                            if (matchesSelector(target, selector)) {
                                handler.call(target, e);
                                break;
                            }
                            target = target.parentNode;
                        }
                        if (matchesSelector(element, selector)) {
                            handler.call(element, e);
                        }
                    } else {
                        handler.call(element, e);
                    }
                };
    
                if (!handlers[eventKey]) {
                    handlers[eventKey] = [];
                }
                handlers[eventKey].push({
                    originalHandler: handler,
                    listener: listener
                });
                eventHandlers.set(element, handlers);
    
                element.addEventListener(event, listener, useCapture || false);
            });
        });
    };

    
    jFast.prototype.off = function(events, selector, handler, useCapture) {
        if (typeof selector === 'function') {
            useCapture = handler;
            handler = selector;
            selector = null;
        }
        var eventList = events.split(' ');
    
        return this.each(function(element) {
            var handlers = eventHandlers.get(element);
            if (!handlers) return;
    
            eventList.forEach(function(event) {
                var eventKey = event + (selector ? '_' + selector : '');
                var eventHandlersArray = handlers[eventKey];
                if (!eventHandlersArray) return;
    
                for (var i = 0; i < eventHandlersArray.length; i++) {
                    var h = eventHandlersArray[i];
                    if (!handler || h.originalHandler === handler) {
                        element.removeEventListener(event, h.listener, useCapture || false);
                        eventHandlersArray.splice(i, 1);
                        i--;
                    }
                }
                if (eventHandlersArray.length === 0) {
                    delete handlers[eventKey];
                }
            });
    
            if (Object.keys(handlers).length === 0) {
                eventHandlers.delete(element);
            } else {
                eventHandlers.set(element, handlers);
            }
        });
    };
    

    jFast.prototype.trigger = function(event) {
        var evt = new Event(event);
        return this.each(function(element) {
            element.dispatchEvent(evt);
        });
    };

    jFast.prototype.change = function(handler) {
        if (typeof handler === 'function') {
            return this.on('change', handler);
        } else {
            return this.trigger('change');
        }
    };

    ['keydown', 'keyup', 'keypress', 'mouseover', 'mouseout', 'mouseenter', 'mouseleave'].forEach(function(eventName) {
        jFast.prototype[eventName] = function(handler) {
            if (typeof handler === 'function') {
                return this.on(eventName, handler);
            } else {
                return this.trigger(eventName);
            }
        };
    });

    jFast.prototype.clone = function(deep) {
        deep = deep !== false; // default to deep clone
        var clones = [];
        this.each(function(element) {
            clones.push(element.cloneNode(deep));
        });
        return jFast(clones);
    };

    jFast.prototype.serialize = function() {
        var form = this.elements[0];
        if (!form || form.tagName !== 'FORM') return '';
        var elements = form.elements;
        var queryString = [];
        Array.prototype.forEach.call(elements, function(el) {
            if (!el.name || el.disabled || el.type === 'file' || el.type === 'reset' || el.type === 'submit' || el.type === 'button') return;
            if (el.type === 'select-multiple') {
                Array.prototype.forEach.call(el.options, function(option) {
                    if (option.selected) {
                        queryString.push(encodeURIComponent(el.name) + '=' + encodeURIComponent(option.value));
                    }
                });
            } else if ((el.type !== 'checkbox' && el.type !== 'radio') || el.checked) {
                queryString.push(encodeURIComponent(el.name) + '=' + encodeURIComponent(el.value));
            }
        });
        return queryString.join('&');
    };
    
    jFast.prototype.serializeArray = function() {
        var form = this.elements[0];
        if (!form || form.tagName !== 'FORM') return [];
        var elements = form.elements;
        var dataArray = [];
        Array.prototype.forEach.call(elements, function(el) {
            if (!el.name || el.disabled || el.type === 'file' || el.type === 'reset' || el.type === 'submit' || el.type === 'button') return;
            if (el.type === 'select-multiple') {
                Array.prototype.forEach.call(el.options, function(option) {
                    if (option.selected) {
                        dataArray.push({ name: el.name, value: option.value });
                    }
                });
            } else if ((el.type !== 'checkbox' && el.type !== 'radio') || el.checked) {
                dataArray.push({ name: el.name, value: el.value });
            }
        });
        return dataArray;
    };
    
    jFast.prototype.width = function(value) {
        if (value === undefined) {
            var elem = this.elements[0];
            if (!elem) return undefined;
            return elem.getBoundingClientRect().width;
        } else {
            return this.each(function(element) {
                element.style.width = typeof value === 'number' ? value + 'px' : value;
            });
        }
    };
    
    jFast.prototype.height = function(value) {
        if (value === undefined) {
            var elem = this.elements[0];
            if (!elem) return undefined;
            return elem.getBoundingClientRect().height;
        } else {
            return this.each(function(element) {
                element.style.height = typeof value === 'number' ? value + 'px' : value;
            });
        }
    };

    jFast.prototype.offset = function() {
        var elem = this.elements[0];
        if (!elem) return undefined;
        var rect = elem.getBoundingClientRect();
        return {
            top: rect.top + window.pageYOffset,
            left: rect.left + window.pageXOffset
        };
    };
    
    jFast.prototype.position = function() {
        var elem = this.elements[0];
        if (!elem) return undefined;
        return {
            top: elem.offsetTop,
            left: elem.offsetLeft
        };
    };
    
    jFast.prototype.scrollTop = function(value) {
        if (value === undefined) {
            var elem = this.elements[0];
            if (!elem) return undefined;
            return elem.scrollTop;
        } else {
            return this.each(function(element) {
                element.scrollTop = value;
            });
        }
    };
    
    jFast.prototype.scrollLeft = function(value) {
        if (value === undefined) {
            var elem = this.elements[0];
            if (!elem) return undefined;
            return elem.scrollLeft;
        } else {
            return this.each(function(element) {
                element.scrollLeft = value;
            });
        }
    };
    
    jFast.prototype.index = function(element) {
        if (!element) {
            var elem = this.elements[0];
            if (!elem || !elem.parentNode) return -1;
            return Array.prototype.indexOf.call(elem.parentNode.children, elem);
        } else {
            return Array.prototype.indexOf.call(this.elements, element);
        }
    };
    
    jFast.prototype.not = function(selector) {
        var filteredElements = Array.prototype.filter.call(this.elements, function(element) {
            return !element.matches(selector);
        });
        this.elements = filteredElements;
        return this;
    };
    
    

    jFast.prototype.click = function(handler) {
        if (typeof handler === 'function') {
            // Gán sự kiện click
            return this.each(function(element) {
                element.addEventListener('click', handler);
            });
        } else {
            // Kích hoạt sự kiện click
            return this.each(function(element) {
                element.click();
            });
        }
    };

    // Effects and Animation
    jFast.prototype.hide = function(duration) {
        if (duration) {
            return this.each(function(element) {
                element.style.transition = `opacity ${duration}ms`;
                element.style.opacity = 0;
                setTimeout(function() {
                    element.style.display = 'none';
                }, duration);
            });
        } else {
            return this.each(function(element) {
                element.style.display = 'none';
            });
        }
    };
    
    jFast.prototype.show = function(duration) {
        return this.each(function(element) {
            element.style.display = element.dataset.jFastDisplay || '';
            element.style.opacity = 0;
            element.style.transition = `opacity ${duration}ms`;
            setTimeout(function() {
                element.style.opacity = 1;
            }, 10);
        });
    };

    jFast.prototype.toggle = function(duration) {
        return this.each(function(element) {
            if (getComputedStyle(element).display === 'none') {
                $(element).show(duration);
            } else {
                $(element).hide(duration);
            }
        });
    };

    jFast.prototype.focus = function() {
        return this.each(function(element) {
            element.focus();
        });
    };
    
    jFast.prototype.blur = function() {
        return this.each(function(element) {
            element.blur();
        });
    };

    jFast.prototype.eq = function(index) {
        return new jFast(this.elements[index] ? [this.elements[index]] : []);
    };

    jFast.prototype.first = function() {
        return this.eq(0);
    };
    
    jFast.prototype.last = function() {
        return this.eq(this.elements.length - 1);
    };

    jFast.prototype.fadeIn = function(duration) {
        duration = duration || 400;
        return this.each(function(element) {
            element.style.opacity = 0;
            element.style.display = element.style.display === 'none' ? '' : element.style.display;
    
            var last = +new Date();
            var tick = function() {
                var newOpacity = +element.style.opacity + (new Date() - last) / duration;
                element.style.opacity = newOpacity > 1 ? 1 : newOpacity;
                last = +new Date();
    
                if (+element.style.opacity < 1) {
                    (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
                } else {
                    element.style.opacity = '';
                }
            };
    
            tick();
        });
    };

    jFast.prototype.fadeOut = function(duration) {
        duration = duration || 400;
        return this.each(function(element) {
            element.style.opacity = 1;
    
            var last = +new Date();
            var tick = function() {
                var newOpacity = +element.style.opacity - (new Date() - last) / duration;
                element.style.opacity = newOpacity < 0 ? 0 : newOpacity;
                last = +new Date();
    
                if (+element.style.opacity > 0) {
                    (window.requestAnimationFrame && requestAnimationFrame(tick)) || setTimeout(tick, 16);
                } else {
                    element.style.opacity = '';
                    element.style.display = 'none';
                }
            };
    
            tick();
        });
    };

    jFast.prototype.slideUp = function(duration) {
        duration = duration || 400;
        return this.each(function(element) {
            var originalStyles = {
                height: element.style.height,
                paddingTop: element.style.paddingTop,
                paddingBottom: element.style.paddingBottom,
                marginTop: element.style.marginTop,
                marginBottom: element.style.marginBottom,
                overflow: element.style.overflow,
                transition: element.style.transition
            };
    
            element.style.height = element.offsetHeight + 'px';
            element.style.overflow = 'hidden';
            element.style.transition = 'height ' + duration + 'ms, padding ' + duration + 'ms, margin ' + duration + 'ms';
    
            setTimeout(function() {
                element.style.height = '0';
                element.style.paddingTop = '0';
                element.style.paddingBottom = '0';
                element.style.marginTop = '0';
                element.style.marginBottom = '0';
            }, 10);
    
            setTimeout(function() {
                element.style.display = 'none';
                Object.assign(element.style, originalStyles);
            }, duration);
        });
    };

    jFast.prototype.slideDown = function(duration) {
        duration = duration || 400;
        return this.each(function(element) {
            if (getComputedStyle(element).display === 'none') {
                element.style.display = '';
            }
    
            var height = element.offsetHeight;
            var originalStyles = {
                height: element.style.height,
                paddingTop: element.style.paddingTop,
                paddingBottom: element.style.paddingBottom,
                marginTop: element.style.marginTop,
                marginBottom: element.style.marginBottom,
                overflow: element.style.overflow,
                transition: element.style.transition
            };
    
            element.style.height = '0';
            element.style.paddingTop = '0';
            element.style.paddingBottom = '0';
            element.style.marginTop = '0';
            element.style.marginBottom = '0';
            element.style.overflow = 'hidden';
            element.style.transition = 'height ' + duration + 'ms, padding ' + duration + 'ms, margin ' + duration + 'ms';
    
            setTimeout(function() {
                element.style.height = height + 'px';
                element.style.paddingTop = '';
                element.style.paddingBottom = '';
                element.style.marginTop = '';
                element.style.marginBottom = '';
            }, 10);
    
            setTimeout(function() {
                Object.assign(element.style, originalStyles);
            }, duration);
        });
    };

    // DOM Traversal
    jFast.prototype.find = function(selector) {
        var foundElements = new Set();
        this.each(function(element) {
            var nodes = element.querySelectorAll(selector);
            nodes.forEach(function(node) {
                foundElements.add(node);
            });
        });
        this.elements = Array.from(foundElements);
        return this;
    };

    jFast.prototype.val = function(value) {
        if (value === undefined) {
            // Get the value of the first element
            var elem = this.elements[0];
            if (!elem) return undefined;
    
            if (elem.tagName === 'SELECT') {
                if (elem.multiple) {
                    // For multiple selects, return an array of selected values
                    var selectedOptions = Array.prototype.slice.call(elem.options).filter(function(option) {
                        return option.selected;
                    }).map(function(option) {
                        return option.value;
                    });
                    return selectedOptions;
                } else {
                    return elem.value;
                }
            } else if ((elem.type === 'checkbox' || elem.type === 'radio')) {
                return elem.checked ? elem.value : undefined;
            } else {
                return elem.value;
            }
        } else {
            // Set the value of each element
            return this.each(function(element) {
                if (element.tagName === 'SELECT') {
                    if (element.multiple && Array.isArray(value)) {
                        Array.prototype.forEach.call(element.options, function(option) {
                            option.selected = value.indexOf(option.value) > -1;
                        });
                    } else {
                        element.value = value;
                    }
                } else if ((element.type === 'checkbox' || element.type === 'radio')) {
                    if (typeof value === 'boolean') {
                        element.checked = value;
                    } else {
                        element.value = value;
                    }
                } else {
                    element.value = value;
                }
            });
        }
    };

    jFast.prototype.prop = function(name, value) {
        if (!name) {
            console.warn('jFast.prop: Property name is required.');
            return this;
        }
        if (value === undefined) {
            // Get the property value of the first element
            if (this.elements[0]) {
                return this.elements[0][name];
            } else {
                return undefined;
            }
        } else {
            // Set the property value for each element
            return this.each(function(element) {
                if (typeof value === 'boolean') {
                    element[name] = value;
                } else {
                    element.setAttribute(name, value);
                }
            });
        }
    };

    jFast.prototype.closest = function(selector) {
        var matchedElements = [];
        this.each(function(element) {
            var parent = element;
            while (parent && parent !== document) {
                if (parent.matches(selector)) {
                    matchedElements.push(parent);
                    break;
                }
                parent = parent.parentElement;
            }
        });
        this.elements = matchedElements;
        return this;
    };
    

    jFast.prototype.submit = function() {
        return this.each(function(element) {
            var form;

            if (element.tagName === 'FORM') {
                form = element;
            } else if ((element.tagName === 'BUTTON' || element.tagName === 'INPUT') && element.type === 'submit') {
                // Find the closest form ancestor
                form = element.closest('form');
            }

            if (form) {
                if (typeof form.requestSubmit === 'function') {
                    // Use requestSubmit if available to trigger validation and submit event
                    form.requestSubmit(element);
                } else {
                    // Fallback for older browsers
                    var event = document.createEvent('Event');
                    event.initEvent('submit', true, true);
                    if (form.dispatchEvent(event)) {
                        form.submit();
                    }
                }
            }
        });
    };

    jFast.prototype.parent = function() {
        var parents = [];
        this.each(function(element) {
            if (element.parentNode) {
                parents.push(element.parentNode);
            }
        });
        this.elements = parents;
        return this;
    };

    jFast.prototype.parents = function() {
        var parents = [];
        this.each(function(element) {
            var parent = element.parentNode;
            while (parent) {
                parents.push(parent);
                parent = parent.parentNode;
            }
        });
        this.elements = parents;
        return this;
    };

    jFast.prototype.children = function() {
        var children = [];
        this.each(function(element) {
            children = children.concat(Array.prototype.slice.call(element.children));
        });
        this.elements = children;
        return this;
    };

    jFast.prototype.next = function() {
        var nextElements = [];
        this.each(function(element) {
            if (element.nextElementSibling) {
                nextElements.push(element.nextElementSibling);
            }
        });
        this.elements = nextElements;
        return this;
    };

    jFast.prototype.prev = function() {
        var prevElements = [];
        this.each(function(element) {
            if (element.previousElementSibling) {
                prevElements.push(element.previousElementSibling);
            }
        });
        this.elements = prevElements;
        return this;
    };

    jFast.prototype.siblings = function() {
        var siblingsSet = new Set();
        this.each(function(element) {
            var parent = element.parentNode;
            if (!parent) return;
            var siblings = parent.children;
            for (var i = 0; i < siblings.length; i++) {
                if (siblings[i] !== element) {
                    siblingsSet.add(siblings[i]);
                }
            }
        });
        this.elements = Array.from(siblingsSet);
        return this;
    };

    // DOM Manipulation
    jFast.prototype.append = function(content) {
        return this.each(function(element, index) {
            if (typeof content === 'string') {
                element.insertAdjacentHTML('beforeend', content);
            } else if (content instanceof HTMLElement) {
                element.appendChild(index === 0 ? content : content.cloneNode(true));
            } else if (content instanceof jFast || content instanceof NodeList || Array.isArray(content)) {
                Array.prototype.forEach.call(content.elements || content, function(child) {
                    element.appendChild(index === 0 ? child : child.cloneNode(true));
                });
            }
        });
    };
    
    jFast.prototype.prepend = function(content) {
        return this.each(function(element, index) {
            if (typeof content === 'string') {
                element.insertAdjacentHTML('afterbegin', content);
            } else if (content instanceof HTMLElement) {
                element.insertBefore(index === 0 ? content : content.cloneNode(true), element.firstChild);
            } else if (content instanceof jFast || content instanceof NodeList || Array.isArray(content)) {
                Array.prototype.forEach.call(content.elements || content, function(child) {
                    element.insertBefore(index === 0 ? child : child.cloneNode(true), element.firstChild);
                });
            }
        });
    };    

    jFast.prototype.remove = function() {
        return this.each(function(element) {
            if (element.parentNode) {
                element.parentNode.removeChild(element);
            }
        });
    };

    jFast.prototype.empty = function() {
        return this.each(function(element) {
            element.innerHTML = '';
        });
    };

    // Utilities
    jFast.each = function(collection, callback) {
        Array.prototype.forEach.call(collection, callback);
    };

    jFast.map = function(collection, callback) {
        return Array.prototype.map.call(collection, callback);
    };

    jFast.grep = function(array, callback) {
        return array.filter(callback);
    };

    jFast.inArray = function(item, array) {
        return array.indexOf(item) !== -1;
    };

    // Selectors
    jFast.prototype.filter = function(selector) {
        var filteredElements = Array.prototype.filter.call(this.elements, function(element) {
            return element.matches(selector);
        });
        this.elements = filteredElements;
        return this;
    };

    // AJAX
    jFast.ajax = function(options) {
        var xhr = new XMLHttpRequest();
        xhr.open(options.type || 'GET', options.url, options.async !== false);
        // Set Content-Type header
        if (options.contentType !== false) {
            xhr.setRequestHeader('Content-Type', options.contentType || 'application/x-www-form-urlencoded; charset=UTF-8');
        }
        // Set Accept header based on dataType
        if (options.dataType === 'json') {
            xhr.setRequestHeader('Accept', 'application/json');
        }
        // Set custom headers
        if (options.headers) {
            for (var header in options.headers) {
                if (options.headers.hasOwnProperty(header)) {
                    xhr.setRequestHeader(header, options.headers[header]);
                }
            }
        }
        xhr.onload = function() {
            var status = xhr.status;
            if ((status >= 200 && status < 300) || status === 304) {
                var response = xhr.responseText;
                if (options.dataType === 'json') {
                    try {
                        response = JSON.parse(response);
                    } catch (e) {
                        if (options.error) {
                            options.error(xhr, 'parsererror', e);
                        }
                        return;
                    }
                }
                if (options.success) {
                    options.success(response, status, xhr);
                }
            } else {
                if (options.error) {
                    options.error(xhr, status, xhr.statusText);
                }
            }
        };
        xhr.onerror = function() {
            if (options.error) {
                options.error(xhr, xhr.status, xhr.statusText);
            }
        };
        if (options.beforeSend) {
            options.beforeSend(xhr);
        }
        xhr.send(options.data || null);
    };

    // Attach to global
    global.$ = jFast;

}(window));

