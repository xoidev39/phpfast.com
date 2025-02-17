<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chat Component</title>
    <Style>
        *, ::before, ::after {
            --tw-border-spacing-x: 0;
            --tw-border-spacing-y: 0;
            --tw-translate-x: 0;
            --tw-translate-y: 0;
            --tw-rotate: 0;
            --tw-skew-x: 0;
            --tw-skew-y: 0;
            --tw-scale-x: 1;
            --tw-scale-y: 1;
            --tw-pan-x:  ;
            --tw-pan-y:  ;
            --tw-pinch-zoom:  ;
            --tw-scroll-snap-strictness: proximity;
            --tw-gradient-from-position:  ;
            --tw-gradient-via-position:  ;
            --tw-gradient-to-position:  ;
            --tw-ordinal:  ;
            --tw-slashed-zero:  ;
            --tw-numeric-figure:  ;
            --tw-numeric-spacing:  ;
            --tw-numeric-fraction:  ;
            --tw-ring-inset:  ;
            --tw-ring-offset-width: 0px;
            --tw-ring-offset-color: #fff;
            --tw-ring-color: rgb(59 130 246 / 0.5);
            --tw-ring-offset-shadow: 0 0 #0000;
            --tw-ring-shadow: 0 0 #0000;
            --tw-shadow: 0 0 #0000;
            --tw-shadow-colored: 0 0 #0000;
            --tw-blur:  ;
            --tw-brightness:  ;
            --tw-contrast:  ;
            --tw-grayscale:  ;
            --tw-hue-rotate:  ;
            --tw-invert:  ;
            --tw-saturate:  ;
            --tw-sepia:  ;
            --tw-drop-shadow:  ;
            --tw-backdrop-blur:  ;
            --tw-backdrop-brightness:  ;
            --tw-backdrop-contrast:  ;
            --tw-backdrop-grayscale:  ;
            --tw-backdrop-hue-rotate:  ;
            --tw-backdrop-invert:  ;
            --tw-backdrop-opacity:  ;
            --tw-backdrop-saturate:  ;
            --tw-backdrop-sepia:  ;
            --tw-contain-size:  ;
            --tw-contain-layout:  ;
            --tw-contain-paint:  ;
            --tw-contain-style:  ;
            }

            ::backdrop {
            --tw-border-spacing-x: 0;
            --tw-border-spacing-y: 0;
            --tw-translate-x: 0;
            --tw-translate-y: 0;
            --tw-rotate: 0;
            --tw-skew-x: 0;
            --tw-skew-y: 0;
            --tw-scale-x: 1;
            --tw-scale-y: 1;
            --tw-pan-x:  ;
            --tw-pan-y:  ;
            --tw-pinch-zoom:  ;
            --tw-scroll-snap-strictness: proximity;
            --tw-gradient-from-position:  ;
            --tw-gradient-via-position:  ;
            --tw-gradient-to-position:  ;
            --tw-ordinal:  ;
            --tw-slashed-zero:  ;
            --tw-numeric-figure:  ;
            --tw-numeric-spacing:  ;
            --tw-numeric-fraction:  ;
            --tw-ring-inset:  ;
            --tw-ring-offset-width: 0px;
            --tw-ring-offset-color: #fff;
            --tw-ring-color: rgb(59 130 246 / 0.5);
            --tw-ring-offset-shadow: 0 0 #0000;
            --tw-ring-shadow: 0 0 #0000;
            --tw-shadow: 0 0 #0000;
            --tw-shadow-colored: 0 0 #0000;
            --tw-blur:  ;
            --tw-brightness:  ;
            --tw-contrast:  ;
            --tw-grayscale:  ;
            --tw-hue-rotate:  ;
            --tw-invert:  ;
            --tw-saturate:  ;
            --tw-sepia:  ;
            --tw-drop-shadow:  ;
            --tw-backdrop-blur:  ;
            --tw-backdrop-brightness:  ;
            --tw-backdrop-contrast:  ;
            --tw-backdrop-grayscale:  ;
            --tw-backdrop-hue-rotate:  ;
            --tw-backdrop-invert:  ;
            --tw-backdrop-opacity:  ;
            --tw-backdrop-saturate:  ;
            --tw-backdrop-sepia:  ;
            --tw-contain-size:  ;
            --tw-contain-layout:  ;
            --tw-contain-paint:  ;
            --tw-contain-style:  ;
            }/*
            ! tailwindcss v3.4.17 | MIT License | https://tailwindcss.com
            *//*
            1. Prevent padding and border from affecting element width. (https://github.com/mozdevs/cssremedy/issues/4)
            2. Allow adding a border to an element by just adding a border-width. (https://github.com/tailwindcss/tailwindcss/pull/116)
            */

            *,
            ::before,
            ::after {
            box-sizing: border-box; /* 1 */
            border-width: 0; /* 2 */
            border-style: solid; /* 2 */
            border-color: #e5e7eb; /* 2 */
            }

            ::before,
            ::after {
            --tw-content: '';
            }

            /*
            1. Use a consistent sensible line-height in all browsers.
            2. Prevent adjustments of font size after orientation changes in iOS.
            3. Use a more readable tab size.
            4. Use the user's configured `sans` font-family by default.
            5. Use the user's configured `sans` font-feature-settings by default.
            6. Use the user's configured `sans` font-variation-settings by default.
            7. Disable tap highlights on iOS
            */

            html,
            :host {
            line-height: 1.5; /* 1 */
            -webkit-text-size-adjust: 100%; /* 2 */
            -moz-tab-size: 4; /* 3 */
            -o-tab-size: 4;
                tab-size: 4; /* 3 */
            font-family: Inter, sans-serif; /* 4 */
            font-feature-settings: normal; /* 5 */
            font-variation-settings: normal; /* 6 */
            -webkit-tap-highlight-color: transparent; /* 7 */
            }

            /*
            1. Remove the margin in all browsers.
            2. Inherit line-height from `html` so users can set them as a class directly on the `html` element.
            */

            body {
            margin: 0; /* 1 */
            line-height: inherit; /* 2 */
            }

            /*
            1. Add the correct height in Firefox.
            2. Correct the inheritance of border color in Firefox. (https://bugzilla.mozilla.org/show_bug.cgi?id=190655)
            3. Ensure horizontal rules are visible by default.
            */

            hr {
            height: 0; /* 1 */
            color: inherit; /* 2 */
            border-top-width: 1px; /* 3 */
            }

            /*
            Add the correct text decoration in Chrome, Edge, and Safari.
            */

            abbr:where([title]) {
            -webkit-text-decoration: underline dotted;
                    text-decoration: underline dotted;
            }

            /*
            Remove the default font size and weight for headings.
            */

            h1,
            h2,
            h3,
            h4,
            h5,
            h6 {
            font-size: inherit;
            font-weight: inherit;
            }

            /*
            Reset links to optimize for opt-in styling instead of opt-out.
            */

            a {
            color: inherit;
            text-decoration: inherit;
            }

            /*
            Add the correct font weight in Edge and Safari.
            */

            b,
            strong {
            font-weight: bolder;
            }

            /*
            1. Use the user's configured `mono` font-family by default.
            2. Use the user's configured `mono` font-feature-settings by default.
            3. Use the user's configured `mono` font-variation-settings by default.
            4. Correct the odd `em` font sizing in all browsers.
            */

            code,
            kbd,
            samp,
            pre {
            font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace; /* 1 */
            font-feature-settings: normal; /* 2 */
            font-variation-settings: normal; /* 3 */
            font-size: 1em; /* 4 */
            }

            /*
            Add the correct font size in all browsers.
            */

            small {
            font-size: 80%;
            }

            /*
            Prevent `sub` and `sup` elements from affecting the line height in all browsers.
            */

            sub,
            sup {
            font-size: 75%;
            line-height: 0;
            position: relative;
            vertical-align: baseline;
            }

            sub {
            bottom: -0.25em;
            }

            sup {
            top: -0.5em;
            }

            /*
            1. Remove text indentation from table contents in Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=999088, https://bugs.webkit.org/show_bug.cgi?id=201297)
            2. Correct table border color inheritance in all Chrome and Safari. (https://bugs.chromium.org/p/chromium/issues/detail?id=935729, https://bugs.webkit.org/show_bug.cgi?id=195016)
            3. Remove gaps between table borders by default.
            */

            table {
            text-indent: 0; /* 1 */
            border-color: inherit; /* 2 */
            border-collapse: collapse; /* 3 */
            }

            /*
            1. Change the font styles in all browsers.
            2. Remove the margin in Firefox and Safari.
            3. Remove default padding in all browsers.
            */

            button,
            input,
            optgroup,
            select,
            textarea {
            font-family: inherit; /* 1 */
            font-feature-settings: inherit; /* 1 */
            font-variation-settings: inherit; /* 1 */
            font-size: 100%; /* 1 */
            font-weight: inherit; /* 1 */
            line-height: inherit; /* 1 */
            letter-spacing: inherit; /* 1 */
            color: inherit; /* 1 */
            margin: 0; /* 2 */
            padding: 0; /* 3 */
            }

            /*
            Remove the inheritance of text transform in Edge and Firefox.
            */

            button,
            select {
            text-transform: none;
            }

            /*
            1. Correct the inability to style clickable types in iOS and Safari.
            2. Remove default button styles.
            */

            button,
            input:where([type='button']),
            input:where([type='reset']),
            input:where([type='submit']) {
            -webkit-appearance: button; /* 1 */
            background-color: transparent; /* 2 */
            background-image: none; /* 2 */
            }

            /*
            Use the modern Firefox focus style for all focusable elements.
            */

            :-moz-focusring {
            outline: auto;
            }

            /*
            Remove the additional `:invalid` styles in Firefox. (https://github.com/mozilla/gecko-dev/blob/2f9eacd9d3d995c937b4251a5557d95d494c9be1/layout/style/res/forms.css#L728-L737)
            */

            :-moz-ui-invalid {
            box-shadow: none;
            }

            /*
            Add the correct vertical alignment in Chrome and Firefox.
            */

            progress {
            vertical-align: baseline;
            }

            /*
            Correct the cursor style of increment and decrement buttons in Safari.
            */

            ::-webkit-inner-spin-button,
            ::-webkit-outer-spin-button {
            height: auto;
            }

            /*
            1. Correct the odd appearance in Chrome and Safari.
            2. Correct the outline style in Safari.
            */

            [type='search'] {
            -webkit-appearance: textfield; /* 1 */
            outline-offset: -2px; /* 2 */
            }

            /*
            Remove the inner padding in Chrome and Safari on macOS.
            */

            ::-webkit-search-decoration {
            -webkit-appearance: none;
            }

            /*
            1. Correct the inability to style clickable types in iOS and Safari.
            2. Change font properties to `inherit` in Safari.
            */

            ::-webkit-file-upload-button {
            -webkit-appearance: button; /* 1 */
            font: inherit; /* 2 */
            }

            /*
            Add the correct display in Chrome and Safari.
            */

            summary {
            display: list-item;
            }

            /*
            Removes the default spacing and border for appropriate elements.
            */

            blockquote,
            dl,
            dd,
            h1,
            h2,
            h3,
            h4,
            h5,
            h6,
            hr,
            figure,
            p,
            pre {
            margin: 0;
            }

            fieldset {
            margin: 0;
            padding: 0;
            }

            legend {
            padding: 0;
            }

            ol,
            ul,
            menu {
            list-style: none;
            margin: 0;
            padding: 0;
            }

            /*
            Reset default styling for dialogs.
            */
            dialog {
            padding: 0;
            }

            /*
            Prevent resizing textareas horizontally by default.
            */

            textarea {
            resize: vertical;
            }

            /*
            1. Reset the default placeholder opacity in Firefox. (https://github.com/tailwindlabs/tailwindcss/issues/3300)
            2. Set the default placeholder color to the user's configured gray 400 color.
            */

            input::-moz-placeholder, textarea::-moz-placeholder {
            opacity: 1; /* 1 */
            color: #9ca3af; /* 2 */
            }

            input::placeholder,
            textarea::placeholder {
            opacity: 1; /* 1 */
            color: #9ca3af; /* 2 */
            }

            /*
            Set the default cursor for buttons.
            */

            button,
            [role="button"] {
            cursor: pointer;
            }

            /*
            Make sure disabled buttons don't get the pointer cursor.
            */
            :disabled {
            cursor: default;
            }

            /*
            1. Make replaced elements `display: block` by default. (https://github.com/mozdevs/cssremedy/issues/14)
            2. Add `vertical-align: middle` to align replaced elements more sensibly by default. (https://github.com/jensimmons/cssremedy/issues/14#issuecomment-634934210)
            This can trigger a poorly considered lint error in some tools but is included by design.
            */

            img,
            svg,
            video,
            canvas,
            audio,
            iframe,
            embed,
            object {
            display: block; /* 1 */
            vertical-align: middle; /* 2 */
            }

            /*
            Constrain images and videos to the parent width and preserve their intrinsic aspect ratio. (https://github.com/mozdevs/cssremedy/issues/14)
            */

            img,
            video {
            max-width: 100%;
            height: auto;
            }

            /* Make elements with the HTML hidden attribute stay hidden by default */
            [hidden]:where(:not([hidden="until-found"])) {
            display: none;
            }

            * {
            scrollbar-color: initial;
            scrollbar-width: initial;
            }
            .container {
            width: 100%;
            margin-right: auto;
            margin-left: auto;
            padding-right: 16px;
            padding-left: 16px;
            }
            @media (min-width: 420px) {

            .container {
                max-width: 420px;
            }
            }
            @media (min-width: 768px) {

            .container {
                max-width: 768px;
            }
            }
            @media (min-width: 1024px) {

            .container {
                max-width: 1024px;
            }
            }
            @media (min-width: 1280px) {

            .container {
                max-width: 1280px;
            }
            }
            @media (min-width: 1536px) {

            .container {
                max-width: 1536px;
            }
            }
            .sr-only {
            position: absolute;
            width: 1px;
            height: 1px;
            padding: 0;
            margin: -1px;
            overflow: hidden;
            clip: rect(0, 0, 0, 0);
            white-space: nowrap;
            border-width: 0;
            }
            .pointer-events-none {
            pointer-events: none;
            }
            .visible {
            visibility: visible;
            }
            .\!static {
            position: static !important;
            }
            .static {
            position: static;
            }
            .fixed {
            position: fixed;
            }
            .absolute {
            position: absolute;
            }
            .relative {
            position: relative;
            }
            .sticky {
            position: sticky;
            }
            .inset-0 {
            inset: 0px;
            }
            .inset-y-0 {
            top: 0px;
            bottom: 0px;
            }
            .\!-bottom-9 {
            bottom: -2.25rem !important;
            }
            .-bottom-2 {
            bottom: -0.5rem;
            }
            .-left-1 {
            left: -0.25rem;
            }
            .-left-2 {
            left: -0.5rem;
            }
            .-right-1 {
            right: -0.25rem;
            }
            .-right-2 {
            right: -0.5rem;
            }
            .-top-1 {
            top: -0.25rem;
            }
            .bottom-0 {
            bottom: 0px;
            }
            .bottom-2 {
            bottom: 0.5rem;
            }
            .bottom-2\.5 {
            bottom: 0.625rem;
            }
            .bottom-3 {
            bottom: 0.75rem;
            }
            .end-2\.5 {
            inset-inline-end: 0.625rem;
            }
            .left-0 {
            left: 0px;
            }
            .left-1\/2 {
            left: 50%;
            }
            .left-2 {
            left: 0.5rem;
            }
            .left-3 {
            left: 0.75rem;
            }
            .right-0 {
            right: 0px;
            }
            .right-2 {
            right: 0.5rem;
            }
            .right-3 {
            right: 0.75rem;
            }
            .start-0 {
            inset-inline-start: 0px;
            }
            .top-0 {
            top: 0px;
            }
            .top-1\/2 {
            top: 50%;
            }
            .top-16 {
            top: 4rem;
            }
            .top-2 {
            top: 0.5rem;
            }
            .top-3 {
            top: 0.75rem;
            }
            .top-6 {
            top: 1.5rem;
            }
            .z-10 {
            z-index: 10;
            }
            .z-20 {
            z-index: 20;
            }
            .z-30 {
            z-index: 30;
            }
            .z-40 {
            z-index: 40;
            }
            .z-50 {
            z-index: 50;
            }
            .z-\[1\] {
            z-index: 1;
            }
            .col-span-2 {
            grid-column: span 2 / span 2;
            }
            .-mx-\[3\.3rem\] {
            margin-left: -3.3rem;
            margin-right: -3.3rem;
            }
            .mx-auto {
            margin-left: auto;
            margin-right: auto;
            }
            .my-10 {
            margin-top: 2.5rem;
            margin-bottom: 2.5rem;
            }
            .my-4 {
            margin-top: 1rem;
            margin-bottom: 1rem;
            }
            .\!mt-4 {
            margin-top: 1rem !important;
            }
            .-mt-4 {
            margin-top: -1rem;
            }
            .mb-1 {
            margin-bottom: 0.25rem;
            }
            .mb-12 {
            margin-bottom: 3rem;
            }
            .mb-2 {
            margin-bottom: 0.5rem;
            }
            .mb-3 {
            margin-bottom: 0.75rem;
            }
            .mb-4 {
            margin-bottom: 1rem;
            }
            .mb-6 {
            margin-bottom: 1.5rem;
            }
            .mb-8 {
            margin-bottom: 2rem;
            }
            .ml-2 {
            margin-left: 0.5rem;
            }
            .ml-4 {
            margin-left: 1rem;
            }
            .ml-auto {
            margin-left: auto;
            }
            .mr-2 {
            margin-right: 0.5rem;
            }
            .mr-4 {
            margin-right: 1rem;
            }
            .mt-1 {
            margin-top: 0.25rem;
            }
            .mt-2 {
            margin-top: 0.5rem;
            }
            .mt-20 {
            margin-top: 5rem;
            }
            .mt-3 {
            margin-top: 0.75rem;
            }
            .mt-4 {
            margin-top: 1rem;
            }
            .mt-5 {
            margin-top: 1.25rem;
            }
            .mt-6 {
            margin-top: 1.5rem;
            }
            .mt-8 {
            margin-top: 2rem;
            }
            .mt-9 {
            margin-top: 2.25rem;
            }
            .mt-auto {
            margin-top: auto;
            }
            .block {
            display: block;
            }
            .inline-block {
            display: inline-block;
            }
            .\!flex {
            display: flex !important;
            }
            .flex {
            display: flex;
            }
            .grid {
            display: grid;
            }
            .hidden {
            display: none;
            }
            .size-4 {
            width: 1rem;
            height: 1rem;
            }
            .size-6 {
            width: 1.5rem;
            height: 1.5rem;
            }
            .size-8 {
            width: 2rem;
            height: 2rem;
            }
            .h-1 {
            height: 0.25rem;
            }
            .h-10 {
            height: 2.5rem;
            }
            .h-12 {
            height: 3rem;
            }
            .h-14 {
            height: 3.5rem;
            }
            .h-16 {
            height: 4rem;
            }
            .h-20 {
            height: 5rem;
            }
            .h-3 {
            height: 0.75rem;
            }
            .h-4 {
            height: 1rem;
            }
            .h-5 {
            height: 1.25rem;
            }
            .h-6 {
            height: 1.5rem;
            }
            .h-7 {
            height: 1.75rem;
            }
            .h-8 {
            height: 2rem;
            }
            .h-9 {
            height: 2.25rem;
            }
            .h-\[106px\] {
            height: 106px;
            }
            .h-\[10px\] {
            height: 10px;
            }
            .h-\[112px\] {
            height: 112px;
            }
            .h-\[132px\] {
            height: 132px;
            }
            .h-\[152px\] {
            height: 152px;
            }
            .h-\[172px\] {
            height: 172px;
            }
            .h-\[240px\] {
            height: 240px;
            }
            .h-\[268px\] {
            height: 268px;
            }
            .h-\[320px\] {
            height: 320px;
            }
            .h-\[335px\] {
            height: 335px;
            }
            .h-\[3px\] {
            height: 3px;
            }
            .h-\[49px\] {
            height: 49px;
            }
            .h-\[557px\] {
            height: 557px;
            }
            .h-\[600px\] {
            height: 600px;
            }
            .h-\[6px\] {
            height: 6px;
            }
            .h-\[76px\] {
            height: 76px;
            }
            .h-\[96px\] {
            height: 96px;
            }
            .h-\[97px\] {
            height: 97px;
            }
            .h-auto {
            height: auto;
            }
            .h-full {
            height: 100%;
            }
            .h-screen {
            height: 100vh;
            }
            .max-h-\[calc\(100\%-4rem\)\] {
            max-height: calc(100% - 4rem);
            }
            .max-h-full {
            max-height: 100%;
            }
            .min-h-10 {
            min-height: 2.5rem;
            }
            .min-h-16 {
            min-height: 4rem;
            }
            .min-h-80 {
            min-height: 20rem;
            }
            .\!w-auto {
            width: auto !important;
            }
            .w-1\/3 {
            width: 33.333333%;
            }
            .w-10 {
            width: 2.5rem;
            }
            .w-12 {
            width: 3rem;
            }
            .w-14 {
            width: 3.5rem;
            }
            .w-16 {
            width: 4rem;
            }
            .w-2\/3 {
            width: 66.666667%;
            }
            .w-3 {
            width: 0.75rem;
            }
            .w-4 {
            width: 1rem;
            }
            .w-40 {
            width: 10rem;
            }
            .w-5 {
            width: 1.25rem;
            }
            .w-56 {
            width: 14rem;
            }
            .w-6 {
            width: 1.5rem;
            }
            .w-8 {
            width: 2rem;
            }
            .w-9 {
            width: 2.25rem;
            }
            .w-\[106px\] {
            width: 106px;
            }
            .w-\[10px\] {
            width: 10px;
            }
            .w-\[224px\] {
            width: 224px;
            }
            .w-\[320px\] {
            width: 320px;
            }
            .w-\[76px\] {
            width: 76px;
            }
            .w-\[92px\] {
            width: 92px;
            }
            .w-\[96px\] {
            width: 96px;
            }
            .w-full {
            width: 100%;
            }
            .max-w-\[286px\] {
            max-width: 286px;
            }
            .max-w-xs {
            max-width: 20rem;
            }
            .flex-1 {
            flex: 1 1 0%;
            }
            .flex-shrink-0 {
            flex-shrink: 0;
            }
            .flex-grow {
            flex-grow: 1;
            }
            .basis-\[106px\] {
            flex-basis: 106px;
            }
            .basis-\[120px\] {
            flex-basis: 120px;
            }
            .-translate-x-1\/2 {
            --tw-translate-x: -50%;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .-translate-x-2\/4 {
            --tw-translate-x: -50%;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .-translate-x-full {
            --tw-translate-x: -100%;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .-translate-y-1\/2 {
            --tw-translate-y: -50%;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .translate-x-0 {
            --tw-translate-x: 0px;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .translate-y-0 {
            --tw-translate-y: 0px;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .translate-y-full {
            --tw-translate-y: 100%;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .transform {
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y));
            }
            .cursor-grab {
            cursor: grab;
            }
            .cursor-grabbing {
            cursor: grabbing;
            }
            .cursor-pointer {
            cursor: pointer;
            }
            .\!resize-none {
            resize: none !important;
            }
            .resize {
            resize: both;
            }
            .list-none {
            list-style-type: none;
            }
            .appearance-none {
            -webkit-appearance: none;
                -moz-appearance: none;
                    appearance: none;
            }
            .grid-cols-2 {
            grid-template-columns: repeat(2, minmax(0, 1fr));
            }
            .grid-cols-3 {
            grid-template-columns: repeat(3, minmax(0, 1fr));
            }
            .grid-cols-6 {
            grid-template-columns: repeat(6, minmax(0, 1fr));
            }
            .grid-cols-user {
            grid-template-columns: repeat(auto-fit, minmax(76px, 1fr));
            }
            .flex-col {
            flex-direction: column;
            }
            .flex-wrap {
            flex-wrap: wrap;
            }
            .items-start {
            align-items: flex-start;
            }
            .items-end {
            align-items: flex-end;
            }
            .items-center {
            align-items: center;
            }
            .justify-center {
            justify-content: center;
            }
            .justify-between {
            justify-content: space-between;
            }
            .gap-1 {
            gap: 0.25rem;
            }
            .gap-2 {
            gap: 0.5rem;
            }
            .gap-3 {
            gap: 0.75rem;
            }
            .gap-4 {
            gap: 1rem;
            }
            .gap-5 {
            gap: 1.25rem;
            }
            .space-x-2 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-x-reverse: 0;
            margin-right: calc(0.5rem * var(--tw-space-x-reverse));
            margin-left: calc(0.5rem * calc(1 - var(--tw-space-x-reverse)));
            }
            .space-y-2 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-y-reverse: 0;
            margin-top: calc(0.5rem * calc(1 - var(--tw-space-y-reverse)));
            margin-bottom: calc(0.5rem * var(--tw-space-y-reverse));
            }
            .space-y-3 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-y-reverse: 0;
            margin-top: calc(0.75rem * calc(1 - var(--tw-space-y-reverse)));
            margin-bottom: calc(0.75rem * var(--tw-space-y-reverse));
            }
            .space-y-4 > :not([hidden]) ~ :not([hidden]) {
            --tw-space-y-reverse: 0;
            margin-top: calc(1rem * calc(1 - var(--tw-space-y-reverse)));
            margin-bottom: calc(1rem * var(--tw-space-y-reverse));
            }
            .overflow-hidden {
            overflow: hidden;
            }
            .\!overflow-visible {
            overflow: visible !important;
            }
            .overflow-x-auto {
            overflow-x: auto;
            }
            .overflow-y-auto {
            overflow-y: auto;
            }
            .overflow-y-hidden {
            overflow-y: hidden;
            }
            .whitespace-normal {
            white-space: normal;
            }
            .whitespace-nowrap {
            white-space: nowrap;
            }
            .rounded {
            border-radius: 0.25rem;
            }
            .rounded-2xl {
            border-radius: 1rem;
            }
            .rounded-\[10px\] {
            border-radius: 10px;
            }
            .rounded-\[12px\] {
            border-radius: 12px;
            }
            .rounded-full {
            border-radius: 9999px;
            }
            .rounded-lg {
            border-radius: 0.5rem;
            }
            .rounded-md {
            border-radius: 0.375rem;
            }
            .rounded-sm {
            border-radius: 0.125rem;
            }
            .rounded-xl {
            border-radius: 0.75rem;
            }
            .rounded-b-\[48px\] {
            border-bottom-right-radius: 48px;
            border-bottom-left-radius: 48px;
            }
            .rounded-b-xl {
            border-bottom-right-radius: 0.75rem;
            border-bottom-left-radius: 0.75rem;
            }
            .rounded-e-2xl {
            border-start-end-radius: 1rem;
            border-end-end-radius: 1rem;
            }
            .rounded-r-lg {
            border-top-right-radius: 0.5rem;
            border-bottom-right-radius: 0.5rem;
            }
            .rounded-s-2xl {
            border-start-start-radius: 1rem;
            border-end-start-radius: 1rem;
            }
            .rounded-s-lg {
            border-start-start-radius: 0.5rem;
            border-end-start-radius: 0.5rem;
            }
            .rounded-t {
            border-top-left-radius: 0.25rem;
            border-top-right-radius: 0.25rem;
            }
            .rounded-t-2xl {
            border-top-left-radius: 1rem;
            border-top-right-radius: 1rem;
            }
            .rounded-bl-none {
            border-bottom-left-radius: 0px;
            }
            .\!border-0 {
            border-width: 0px !important;
            }
            .border {
            border-width: 1px;
            }
            .border-2 {
            border-width: 2px;
            }
            .border-4 {
            border-width: 4px;
            }
            .border-b {
            border-bottom-width: 1px;
            }
            .border-l-4 {
            border-left-width: 4px;
            }
            .border-t {
            border-top-width: 1px;
            }
            .border-gray-300 {
            --tw-border-opacity: 1;
            border-color: rgb(209 213 219 / var(--tw-border-opacity, 1));
            }
            .border-gray-900 {
            --tw-border-opacity: 1;
            border-color: rgb(17 24 39 / var(--tw-border-opacity, 1));
            }
            .border-grey {
            --tw-border-opacity: 1;
            border-color: rgb(41 41 41 / var(--tw-border-opacity, 1));
            }
            .border-primary {
            --tw-border-opacity: 1;
            border-color: rgb(209 16 48 / var(--tw-border-opacity, 1));
            }
            .border-white {
            --tw-border-opacity: 1;
            border-color: rgb(255 255 255 / var(--tw-border-opacity, 1));
            }
            .bg-black {
            --tw-bg-opacity: 1;
            background-color: rgb(0 0 0 / var(--tw-bg-opacity, 1));
            }
            .bg-blue {
            --tw-bg-opacity: 1;
            background-color: rgb(107 135 249 / var(--tw-bg-opacity, 1));
            }
            .bg-blue-700 {
            --tw-bg-opacity: 1;
            background-color: rgb(29 78 216 / var(--tw-bg-opacity, 1));
            }
            .bg-gray-800 {
            --tw-bg-opacity: 1;
            background-color: rgb(31 41 55 / var(--tw-bg-opacity, 1));
            }
            .bg-gray-900 {
            --tw-bg-opacity: 1;
            background-color: rgb(17 24 39 / var(--tw-bg-opacity, 1));
            }
            .bg-green-500 {
            --tw-bg-opacity: 1;
            background-color: rgb(34 197 94 / var(--tw-bg-opacity, 1));
            }
            .bg-grey {
            --tw-bg-opacity: 1;
            background-color: rgb(41 41 41 / var(--tw-bg-opacity, 1));
            }
            .bg-grey-50 {
            --tw-bg-opacity: 1;
            background-color: rgb(89 89 89 / var(--tw-bg-opacity, 1));
            }
            .bg-grey-light {
            --tw-bg-opacity: 1;
            background-color: rgb(178 178 178 / var(--tw-bg-opacity, 1));
            }
            .bg-mainBlack {
            --tw-bg-opacity: 1;
            background-color: rgb(1 1 1 / var(--tw-bg-opacity, 1));
            }
            .bg-primary {
            --tw-bg-opacity: 1;
            background-color: rgb(209 16 48 / var(--tw-bg-opacity, 1));
            }
            .bg-red-500 {
            --tw-bg-opacity: 1;
            background-color: rgb(239 68 68 / var(--tw-bg-opacity, 1));
            }
            .bg-red-600 {
            --tw-bg-opacity: 1;
            background-color: rgb(220 38 38 / var(--tw-bg-opacity, 1));
            }
            .bg-white {
            --tw-bg-opacity: 1;
            background-color: rgb(255 255 255 / var(--tw-bg-opacity, 1));
            }
            .bg-opacity-10 {
            --tw-bg-opacity: 0.1;
            }
            .bg-opacity-50 {
            --tw-bg-opacity: 0.5;
            }
            .bg-herofilm {
            background-image: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, #010101 100%);
            }
            .bg-herofilmdetail {
            background-image: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, #010101 60%);
            }
            .bg-mainComment {
            background-image: linear-gradient(180deg, #77051F 0%, #432617 100%);
            }
            .object-cover {
            -o-object-fit: cover;
                object-fit: cover;
            }
            .\!p-3 {
            padding: 0.75rem !important;
            }
            .p-0 {
            padding: 0px;
            }
            .p-1 {
            padding: 0.25rem;
            }
            .p-2 {
            padding: 0.5rem;
            }
            .p-3 {
            padding: 0.75rem;
            }
            .p-4 {
            padding: 1rem;
            }
            .p-5 {
            padding: 1.25rem;
            }
            .p-6 {
            padding: 1.5rem;
            }
            .p-\[2px\] {
            padding: 2px;
            }
            .\!px-0 {
            padding-left: 0px !important;
            padding-right: 0px !important;
            }
            .\!px-3 {
            padding-left: 0.75rem !important;
            padding-right: 0.75rem !important;
            }
            .\!px-4 {
            padding-left: 1rem !important;
            padding-right: 1rem !important;
            }
            .\!py-\[7px\] {
            padding-top: 7px !important;
            padding-bottom: 7px !important;
            }
            .px-2 {
            padding-left: 0.5rem;
            padding-right: 0.5rem;
            }
            .px-3 {
            padding-left: 0.75rem;
            padding-right: 0.75rem;
            }
            .px-4 {
            padding-left: 1rem;
            padding-right: 1rem;
            }
            .px-5 {
            padding-left: 1.25rem;
            padding-right: 1.25rem;
            }
            .py-1 {
            padding-top: 0.25rem;
            padding-bottom: 0.25rem;
            }
            .py-10 {
            padding-top: 2.5rem;
            padding-bottom: 2.5rem;
            }
            .py-2 {
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
            }
            .py-3 {
            padding-top: 0.75rem;
            padding-bottom: 0.75rem;
            }
            .py-4 {
            padding-top: 1rem;
            padding-bottom: 1rem;
            }
            .py-6 {
            padding-top: 1.5rem;
            padding-bottom: 1.5rem;
            }
            .py-8 {
            padding-top: 2rem;
            padding-bottom: 2rem;
            }
            .pb-14 {
            padding-bottom: 3.5rem;
            }
            .pb-24 {
            padding-bottom: 6rem;
            }
            .pl-10 {
            padding-left: 2.5rem;
            }
            .pl-5 {
            padding-left: 1.25rem;
            }
            .pl-8 {
            padding-left: 2rem;
            }
            .pr-6 {
            padding-right: 1.5rem;
            }
            .ps-10 {
            padding-inline-start: 2.5rem;
            }
            .ps-3 {
            padding-inline-start: 0.75rem;
            }
            .pt-5 {
            padding-top: 1.25rem;
            }
            .text-center {
            text-align: center;
            }
            .font-bai {
            font-family: Bai Jamjuree, sans-serif;
            }
            .text-2xl {
            font-size: 1.5rem;
            line-height: 2rem;
            }
            .text-3xl {
            font-size: 1.875rem;
            line-height: 2.25rem;
            }
            .text-\[10px\] {
            font-size: 10px;
            }
            .text-\[15px\] {
            font-size: 15px;
            }
            .text-\[8px\] {
            font-size: 8px;
            }
            .text-\[9px\] {
            font-size: 9px;
            }
            .text-base {
            font-size: 1rem;
            line-height: 1.5rem;
            }
            .text-lg {
            font-size: 1.125rem;
            line-height: 1.75rem;
            }
            .text-sm {
            font-size: 0.875rem;
            line-height: 1.25rem;
            }
            .text-xs {
            font-size: 0.75rem;
            line-height: 1rem;
            }
            .font-bold {
            font-weight: 700;
            }
            .font-light {
            font-weight: 300;
            }
            .font-medium {
            font-weight: 500;
            }
            .font-normal {
            font-weight: 400;
            }
            .font-semibold {
            font-weight: 600;
            }
            .uppercase {
            text-transform: uppercase;
            }
            .leading-10 {
            line-height: 2.5rem;
            }
            .leading-4 {
            line-height: 1rem;
            }
            .leading-5 {
            line-height: 1.25rem;
            }
            .leading-6 {
            line-height: 1.5rem;
            }
            .leading-8 {
            line-height: 2rem;
            }
            .tracking-tighter {
            letter-spacing: -0.05em;
            }
            .text-\[\#B2B2B2\] {
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            .text-\[\#EDEDED\] {
            --tw-text-opacity: 1;
            color: rgb(237 237 237 / var(--tw-text-opacity, 1));
            }
            .text-blue {
            --tw-text-opacity: 1;
            color: rgb(107 135 249 / var(--tw-text-opacity, 1));
            }
            .text-gray-200 {
            --tw-text-opacity: 1;
            color: rgb(229 231 235 / var(--tw-text-opacity, 1));
            }
            .text-gray-400 {
            --tw-text-opacity: 1;
            color: rgb(156 163 175 / var(--tw-text-opacity, 1));
            }
            .text-gray-500 {
            --tw-text-opacity: 1;
            color: rgb(107 114 128 / var(--tw-text-opacity, 1));
            }
            .text-gray-600 {
            --tw-text-opacity: 1;
            color: rgb(75 85 99 / var(--tw-text-opacity, 1));
            }
            .text-gray-900 {
            --tw-text-opacity: 1;
            color: rgb(17 24 39 / var(--tw-text-opacity, 1));
            }
            .text-grey-50 {
            --tw-text-opacity: 1;
            color: rgb(89 89 89 / var(--tw-text-opacity, 1));
            }
            .text-grey-80 {
            --tw-text-opacity: 1;
            color: rgb(237 237 237 / var(--tw-text-opacity, 1));
            }
            .text-grey-light {
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            .text-mainBlack {
            --tw-text-opacity: 1;
            color: rgb(1 1 1 / var(--tw-text-opacity, 1));
            }
            .text-primary {
            --tw-text-opacity: 1;
            color: rgb(209 16 48 / var(--tw-text-opacity, 1));
            }
            .text-red-700 {
            --tw-text-opacity: 1;
            color: rgb(185 28 28 / var(--tw-text-opacity, 1));
            }
            .text-white {
            --tw-text-opacity: 1;
            color: rgb(255 255 255 / var(--tw-text-opacity, 1));
            }
            .placeholder-gray-400::-moz-placeholder {
            --tw-placeholder-opacity: 1;
            color: rgb(156 163 175 / var(--tw-placeholder-opacity, 1));
            }
            .placeholder-gray-400::placeholder {
            --tw-placeholder-opacity: 1;
            color: rgb(156 163 175 / var(--tw-placeholder-opacity, 1));
            }
            .opacity-0 {
            opacity: 0;
            }
            .opacity-100 {
            opacity: 1;
            }
            .opacity-50 {
            opacity: 0.5;
            }
            .opacity-65 {
            opacity: 0.65;
            }
            .shadow {
            --tw-shadow: 0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1);
            --tw-shadow-colored: 0 1px 3px 0 var(--tw-shadow-color), 0 1px 2px -1px var(--tw-shadow-color);
            box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
            }
            .shadow-lg {
            --tw-shadow: 0 10px 15px -3px rgb(0 0 0 / 0.1), 0 4px 6px -4px rgb(0 0 0 / 0.1);
            --tw-shadow-colored: 0 10px 15px -3px var(--tw-shadow-color), 0 4px 6px -4px var(--tw-shadow-color);
            box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
            }
            .shadow-md {
            --tw-shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
            --tw-shadow-colored: 0 4px 6px -1px var(--tw-shadow-color), 0 2px 4px -2px var(--tw-shadow-color);
            box-shadow: var(--tw-ring-offset-shadow, 0 0 #0000), var(--tw-ring-shadow, 0 0 #0000), var(--tw-shadow);
            }
            .blur {
            --tw-blur: blur(8px);
            filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow);
            }
            .invert {
            --tw-invert: invert(100%);
            filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow);
            }
            .filter {
            filter: var(--tw-blur) var(--tw-brightness) var(--tw-contrast) var(--tw-grayscale) var(--tw-hue-rotate) var(--tw-invert) var(--tw-saturate) var(--tw-sepia) var(--tw-drop-shadow);
            }
            .backdrop-blur-20 {
            --tw-backdrop-blur: blur(20px);
            -webkit-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
            backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
            }
            .backdrop-filter {
            -webkit-backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
            backdrop-filter: var(--tw-backdrop-blur) var(--tw-backdrop-brightness) var(--tw-backdrop-contrast) var(--tw-backdrop-grayscale) var(--tw-backdrop-hue-rotate) var(--tw-backdrop-invert) var(--tw-backdrop-opacity) var(--tw-backdrop-saturate) var(--tw-backdrop-sepia);
            }
            .transition {
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, -webkit-backdrop-filter;
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter;
            transition-property: color, background-color, border-color, text-decoration-color, fill, stroke, opacity, box-shadow, transform, filter, backdrop-filter, -webkit-backdrop-filter;
            transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
            transition-duration: 150ms;
            }
            .transition-transform {
            transition-property: transform;
            transition-timing-function: cubic-bezier(0.4, 0, 0.2, 1);
            transition-duration: 150ms;
            }
            .duration-300 {
            transition-duration: 300ms;
            }
            .ease-in {
            transition-timing-function: cubic-bezier(0.4, 0, 1, 1);
            }
            .ease-out {
            transition-timing-function: cubic-bezier(0, 0, 0.2, 1);
            }
            .scrollbar::-webkit-scrollbar-track {
            background-color: var(--scrollbar-track);
            border-radius: var(--scrollbar-track-radius);
            }
            .scrollbar::-webkit-scrollbar-track:hover {
            background-color: var(--scrollbar-track-hover, var(--scrollbar-track));
            }
            .scrollbar::-webkit-scrollbar-track:active {
            background-color: var(--scrollbar-track-active, var(--scrollbar-track-hover, var(--scrollbar-track)));
            }
            .scrollbar::-webkit-scrollbar-thumb {
            background-color: var(--scrollbar-thumb);
            border-radius: var(--scrollbar-thumb-radius);
            }
            .scrollbar::-webkit-scrollbar-thumb:hover {
            background-color: var(--scrollbar-thumb-hover, var(--scrollbar-thumb));
            }
            .scrollbar::-webkit-scrollbar-thumb:active {
            background-color: var(--scrollbar-thumb-active, var(--scrollbar-thumb-hover, var(--scrollbar-thumb)));
            }
            .scrollbar::-webkit-scrollbar-corner {
            background-color: var(--scrollbar-corner);
            border-radius: var(--scrollbar-corner-radius);
            }
            .scrollbar::-webkit-scrollbar-corner:hover {
            background-color: var(--scrollbar-corner-hover, var(--scrollbar-corner));
            }
            .scrollbar::-webkit-scrollbar-corner:active {
            background-color: var(--scrollbar-corner-active, var(--scrollbar-corner-hover, var(--scrollbar-corner)));
            }
            .scrollbar {
            scrollbar-width: auto;
            scrollbar-color: var(--scrollbar-thumb, initial) var(--scrollbar-track, initial);
            }
            .scrollbar::-webkit-scrollbar {
            display: block;
            width: var(--scrollbar-width, 16px);
            height: var(--scrollbar-height, 16px);
            }
            .no-scrollbar {
            -ms-overflow-style: none;
            scrollbar-width: none;
            }
            .no-scrollbar::-webkit-scrollbar {
            display: none;
            }

            /* .head {
                @apply text-2xl font-bold text-blue-500;
            } */
            body {
            font-family: Inter, sans-serif;
            }

            .head {
            font-size: 1.5rem;
            line-height: 2rem;
            font-weight: 700;
            --tw-text-opacity: 1;
            color: rgb(59 130 246 / var(--tw-text-opacity, 1));
            }

            .nav-tabs {
            position: relative;
            margin-top: -1.5rem;
            width: 100%;
            overflow-x: auto;
            --tw-bg-opacity: 1;
            background-color: rgb(1 1 1 / var(--tw-bg-opacity, 1));
            -ms-overflow-style: none;
            scrollbar-width: none;
            }

            .nav-tabs ul {
            display: flex;
            list-style-type: none;
            align-items: center;
            padding: 1.25rem;
            }

            .nav-tabs li {
            margin-right: 1.25rem;
            flex-shrink: 0;
            }

            .nav-tabs::-webkit-scrollbar {
            display: none;
            }

            .nav-tabs a {
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5rem;
            --tw-text-opacity: 1;
            color: rgb(107 114 128 / var(--tw-text-opacity, 1));
            }
            .nav-tabs a.active {
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 9999px;
            --tw-bg-opacity: 1;
            background-color: rgb(255 255 255 / var(--tw-bg-opacity, 1));
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
            padding-left: 1rem;
            padding-right: 1rem;
            font-size: 1rem;
            font-weight: 600;
            line-height: 1.5rem;
            --tw-text-opacity: 1;
            color: rgb(185 28 28 / var(--tw-text-opacity, 1));
            }

            .scroll-container {
            display: flex;
            width: 100%;
            overflow-x: auto;
            white-space: nowrap;
            -ms-overflow-style: none;
            scrollbar-width: none;
            -webkit-user-select: none;
                -moz-user-select: none;
                    user-select: none; /* Disable text selection */
            }
            .scroll-container .scroll-item {
            flex-shrink: 0;
            flex-basis: 14rem;
            }
            .scroll-container img {
            -webkit-user-select: none;
                -moz-user-select: none;
                    user-select: none;
            }

            .scroll-container::-webkit-scrollbar {
            display: none;
            }

            .scroll-item {
            margin-right: 1.25rem;
            display: inline-block;
            width: 14rem;
            }
            .scroll-item:last-child {
            margin-right: 0px;
            }
            .card.scroll-container .item {
            flex-shrink: 0;
            flex-basis: 106px;
            }
            .card.scroll-container .item:last-child {
            margin-right: 0px;
            }
            .card.scroll-container.book .item {
            flex-shrink: 0;
            flex-basis: 120px;
            }

            .label-chapter {
            position: absolute;
            bottom: 0.75rem;
            left: 50%;
            border-radius: 0.75rem;
            border-width: 1px;
            --tw-border-opacity: 1;
            border-color: rgb(255 255 255 / var(--tw-border-opacity, 1));
            --tw-bg-opacity: 1;
            background-color: rgb(220 38 38 / var(--tw-bg-opacity, 1));
            padding-top: 0.25rem;
            padding-bottom: 0.25rem;
            padding-left: 0.5rem;
            padding-right: 0.5rem;
            font-size: 8px;
            font-weight: 700;
            text-transform: uppercase;
            --tw-text-opacity: 1;
            color: rgb(255 255 255 / var(--tw-text-opacity, 1));
            transform: translateX(-50%);
            }
            .modal-language {
            position: fixed;
            left: 0px;
            right: 0px;
            bottom: 0px;
            }
            .modal-language .modal-content {
            border-start-start-radius: 0.5rem;
            border-end-start-radius: 0.5rem;
            --tw-bg-opacity: 1;
            background-color: rgb(1 1 1 / var(--tw-bg-opacity, 1));
            padding: 1.25rem;
            box-shadow: 0px -2px 4px rgba(0, 0, 0, 0.08);
            }
            .cursor-grab {
                cursor: grab;
            }
            .cursor-grabbing {
                cursor: grabbing;
            }
            .swiper-slide {
                img {
                width: 100%;
            }
            }
            .swiper-pagination {
            width: auto !important;
            border-radius: 0.75rem;
            --tw-bg-opacity: 1;
            background-color: rgb(41 41 41 / var(--tw-bg-opacity, 1));
            padding: 0.5rem;
            }
            .swiper-pagination-bullet {
            position: static !important;
            height: 10px;
            width: 10px;
            --tw-rotate: 45deg !important;
            transform: translate(var(--tw-translate-x), var(--tw-translate-y)) rotate(var(--tw-rotate)) skewX(var(--tw-skew-x)) skewY(var(--tw-skew-y)) scaleX(var(--tw-scale-x)) scaleY(var(--tw-scale-y)) !important;
            border-radius: 0.125rem;
            --tw-bg-opacity: 1;
            background-color: rgb(89 89 89 / var(--tw-bg-opacity, 1));
            opacity: 1;
            }
            .swiper-pagination-bullets-dynamic .swiper-pagination-bullet-active {
            --tw-bg-opacity: 1;
            background-color: rgb(209 16 48 / var(--tw-bg-opacity, 1));
            }
            .btn-primary {
            display: inline-block;
            border-radius: 9999px;
            --tw-bg-opacity: 1;
            background-color: rgb(209 16 48 / var(--tw-bg-opacity, 1));
            padding-top: 0.75rem;
            padding-bottom: 0.75rem;
            padding-left: 1.75rem;
            padding-right: 1.75rem;
            font-size: 1rem;
            font-weight: 500;
            line-height: 1.5rem;
            }
            .btn-secondary {
            display: inline-block;
            border-radius: 9999px;
            --tw-bg-opacity: 1;
            background-color: rgb(17 24 39 / var(--tw-bg-opacity, 1));
            padding-top: 0.75rem;
            padding-bottom: 0.75rem;
            padding-left: 1.75rem;
            padding-right: 1.75rem;
            font-size: 1rem;
            font-weight: 500;
            line-height: 1.5rem;
            }
            .btn-secondary-blue {
            display: inline-block;
            border-radius: 9999px;
            --tw-bg-opacity: 1;
            background-color: rgb(107 135 249 / var(--tw-bg-opacity, 1));
            padding-top: 0.75rem;
            padding-bottom: 0.75rem;
            padding-left: 1.75rem;
            padding-right: 1.75rem;
            font-size: 1rem;
            font-weight: 500;
            line-height: 1.5rem;
            }
            .btn-link {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            font-size: 0.875rem;
            font-weight: 400;
            line-height: 1.25rem;
            --tw-text-opacity: 1;
            color: rgb(229 231 235 / var(--tw-text-opacity, 1));
            }
            input {
            display: block;
            height: 3.5rem;
            width: 100%;
            border-radius: 0.5rem;
            border-width: 1px;
            --tw-border-opacity: 1;
            border-color: rgb(41 41 41 / var(--tw-border-opacity, 1));
            --tw-bg-opacity: 1;
            background-color: rgb(0 0 0 / var(--tw-bg-opacity, 1));
            padding-top: 1rem;
            padding-bottom: 1rem;
            padding-left: 0.75rem;
            padding-right: 0.75rem;
            font-weight: 500;
            }
            input::-moz-placeholder {
            font-weight: 500;
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            input::placeholder {
            font-weight: 500;
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            input:focus {
            --tw-border-opacity: 1;
            border-color: rgb(209 16 48 / var(--tw-border-opacity, 1));
            }
            input:focus-visible {
            outline-width: 0px;
            }
            .fieldset .field {
            position: relative;
            }
            textarea {
            height: 3rem;
            width: 14rem;
            resize: none !important;
            border-radius: 9999px;
            border-width: 0px !important;
            background-color: rgb(17 24 39 / var(--tw-bg-opacity, 1));
            --tw-bg-opacity: 1;
            background-color: rgb(41 41 41 / var(--tw-bg-opacity, 1));
            padding-left: 1rem !important;
            padding-right: 1rem !important;
            padding-top: 0.75rem !important;
            padding-bottom: 0.75rem !important;
                box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.15);
                -webkit-backdrop-filter: blur(15px);
                        backdrop-filter: blur(15px);
            }
            .nav-menu {
            position: fixed;
            top: 0px;
            left: 0px;
            bottom: 0px;
            z-index: 50;
            display: flex;
            max-height: 100%;
            width: 320px;
            flex-direction: column;
            align-items: center;
            gap: 1rem;
            overflow-y: auto;
            padding: 1.25rem;
                background: linear-gradient(180deg, #B1062E 0%, #1E1111 50.06%);  
                scrollbar-width: none; /* For Firefox */
                -ms-overflow-style: none;  /* For Internet Explorer and Edge */
            }
            .nav-menu::-webkit-scrollbar {
                display: none; /* For Chrome, Safari, and Opera */
            }
            .nav-menu-account {
            display: none;
            }
            .nav-feature {
            width: 100%;
            }
            .logged .nav-header {
            display: none;
            }
            .logged .nav-feature {
            padding: 1.25rem;
                /* background: radial-gradient(110.61% 110.61% at 50% -10.61%, #B1062E 0%, #1E1111 100%); */
            }
            .logged .nav-menu {
            padding: 0px;
                /* background: linear-gradient(180deg, #050505 0%, #2D0C0C 100%); */
            }
            .logged .nav-menu-content,
            .logged .nav-menu-account {
            padding: 1.25rem;
            }
            .logged .nav-menu-account {
            display: block;
            }
            .logged .nav-menu-content .language {
            display: none;
            }
            .footer .navbar .nav-item.center {
            margin-top: -1rem;
            height: 49px;
            border-radius: 0.75rem;
            --tw-bg-opacity: 1;
            background-color: rgb(209 16 48 / var(--tw-bg-opacity, 1));
            padding-top: 0.5rem;
            padding-bottom: 0.5rem;
            padding-left: 1rem;
            padding-right: 1rem;
            box-shadow: 0px 2px 4px rgba(255, 55, 55, 0.5);
            }
            .chat-form {
                background-image: url(https://entertaiment-app-ashy.vercel.app/image/bg-chat.png);
                background-repeat: no-repeat;
                background-size: cover;
            }
            .main-info {
            position: absolute;
            bottom: 0px;
            left: 0px;
            right: 0px;
            z-index: 10;
            display: flex;
            min-height: 20rem;
            flex-wrap: wrap;
            align-items: flex-end;
            justify-content: center;
            background-image: linear-gradient(180deg, rgba(0, 0, 0, 0) 0%, #010101 60%);
            }
            .chapter-list .listing ul li a {
            display: block;
            border-radius: 0.5rem;
            --tw-bg-opacity: 1;
            background-color: rgb(41 41 41 / var(--tw-bg-opacity, 1));
            padding: 0.25rem;
            font-size: 1rem;
            line-height: 1.5rem;
            font-weight: 400;
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            .chapter-list .listing ul li a.active {
            --tw-bg-opacity: 1;
            background-color: rgb(209 16 48 / var(--tw-bg-opacity, 1));
            --tw-text-opacity: 1;
            color: rgb(255 255 255 / var(--tw-text-opacity, 1));
            }

            input[type='range'] {
            height: 6px;
            cursor: pointer;
            -webkit-appearance: none;
                -moz-appearance: none;
                    appearance: none;
            border-radius: 10px;
            --tw-bg-opacity: 1;
            background-color: rgb(178 178 178 / var(--tw-bg-opacity, 1));
            padding: 0px;
            }
            /* input[type='range']::-moz-range-thumb {
            @apply opacity-0;
            } */
            input[type='range']::-webkit-slider-thumb {
            opacity: 0;
            }
            .placeholder\:text-grey-light::-moz-placeholder {
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            .placeholder\:text-grey-light::placeholder {
            --tw-text-opacity: 1;
            color: rgb(178 178 178 / var(--tw-text-opacity, 1));
            }
            .peer:checked ~ .peer-checked\:bg-primary {
            --tw-bg-opacity: 1;
            background-color: rgb(209 16 48 / var(--tw-bg-opacity, 1));
            }
            .hover\:bg-blue-800:hover {
            --tw-bg-opacity: 1;
            background-color: rgb(30 64 175 / var(--tw-bg-opacity, 1));
            }
            .hover\:bg-gray-100:hover {
            --tw-bg-opacity: 1;
            background-color: rgb(243 244 246 / var(--tw-bg-opacity, 1));
            }
            .hover\:text-white:hover {
            --tw-text-opacity: 1;
            color: rgb(255 255 255 / var(--tw-text-opacity, 1));
            }
            .hover\:underline:hover {
            text-decoration-line: underline;
            }
            .focus\:border-primary:focus {
            --tw-border-opacity: 1;
            border-color: rgb(209 16 48 / var(--tw-border-opacity, 1));
            }
            .focus\:outline-none:focus {
            outline: 2px solid transparent;
            outline-offset: 2px;
            }
            .focus\:ring-4:focus {
            --tw-ring-offset-shadow: var(--tw-ring-inset) 0 0 0 var(--tw-ring-offset-width) var(--tw-ring-offset-color);
            --tw-ring-shadow: var(--tw-ring-inset) 0 0 0 calc(4px + var(--tw-ring-offset-width)) var(--tw-ring-color);
            box-shadow: var(--tw-ring-offset-shadow), var(--tw-ring-shadow), var(--tw-shadow, 0 0 #0000);
            }
            .focus\:ring-blue-300:focus {
            --tw-ring-opacity: 1;
            --tw-ring-color: rgb(147 197 253 / var(--tw-ring-opacity, 1));
            }
            .focus-visible\:outline-0:focus-visible {
            outline-width: 0px;
            }
            @media (min-width: 960px) {

            .md\:h-\[220px\] {
                height: 220px;
            }

            .md\:h-\[350px\] {
                height: 350px;
            }

            .md\:grid-cols-4 {
                grid-template-columns: repeat(4, minmax(0, 1fr));
            }

            .md\:grid-cols-6 {
                grid-template-columns: repeat(6, minmax(0, 1fr));
            }
            }
            @media (prefers-color-scheme: dark) {

            .dark\:bg-blue-600 {
                --tw-bg-opacity: 1;
                background-color: rgb(37 99 235 / var(--tw-bg-opacity, 1));
            }

            .dark\:text-gray-400 {
                --tw-text-opacity: 1;
                color: rgb(156 163 175 / var(--tw-text-opacity, 1));
            }

            .dark\:text-white {
                --tw-text-opacity: 1;
                color: rgb(255 255 255 / var(--tw-text-opacity, 1));
            }

            .dark\:hover\:bg-blue-700:hover {
                --tw-bg-opacity: 1;
                background-color: rgb(29 78 216 / var(--tw-bg-opacity, 1));
            }

            .dark\:focus\:ring-blue-800:focus {
                --tw-ring-opacity: 1;
                --tw-ring-color: rgb(30 64 175 / var(--tw-ring-opacity, 1));
            }
            }
    </Style>

    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/alpinejs@2.8.2/dist/alpine.min.js" defer></script>
</head>

<body class="bg-mainBlack text-white">
    <div class="mx-auto" x-data="chatComponent()">
        <div class="chat-form h-screen flex flex-col">
            <div class="flex flex-col p-6 space-y-4 max-h-[calc(100%-4rem)] overflow-y-auto no-scrollbar">
                <template x-for="message in messages" :key="message.id">
                    <div class="flex flex-col items-start" :class="{'items-end': message.sender === 'me'}">
                        <div class="flex items-start cursor-pointer" @click="setReplyMessage(message)">
                            <div class="relative w-12 mr-4" x-show="message.sender !== 'me'">
                                <img :src="message.avatar" alt="avatar" class="w-12 h-12 object-cover rounded-2xl">
                                <span class="absolute -top-1 -right-1 w-3 h-3 bg-green-500 border-2 border-white rounded-full"
                                    x-show="message.online"></span>
                            </div>
                            <div :class="{'bg-mainBlack bg-opacity-10': message.sender === 'you', 'bg-mainComment': message.sender === 'me'}"  class="text-white p-3 rounded-2xl rounded-bl-none max-w-xs">
                                <template x-if="message.replyTo">
                                    <div class="bg-black bg-opacity-50 text-white p-2 rounded mb-2 border-l-4 border-white">
                                        <div class="font-normal text-[10px] text-grey-light" x-text="getMessageById(message.replyTo).name"></div>
                                        <div class="text-sm" x-text="getMessageById(message.replyTo).text"></div>
                                        <template x-if="getMessageById(message.replyTo).image">
                                            <img :src="getMessageById(message.replyTo).image" alt="reply image"
                                                class="mt-2 rounded-lg">
                                        </template>
                                    </div>
                                </template>
                                <div class="text-sm" x-text="message.text"></div>
                                <template x-if="message.image">
                                    <img :src="message.image" alt="uploaded image" class="mt-2 rounded-lg">
                                </template>
                                <div class="text-[10px] text-grey-light mt-1" x-text="message.time"></div>
                            </div>
                            <div class="relative w-12 ml-4" x-show="message.sender === 'me'">
                                <img :src="message.avatar" alt="avatar" class="w-12 h-12 object-cover rounded-2xl">
                                <span class="absolute -top-1 -left-1 w-3 h-3 bg-green-500 border-2 border-white rounded-full"
                                    x-show="message.online"></span>
                            </div>
                        </div>
                    </div>
                </template>
            </div>
            <div class="mt-auto flex flex-col">
                <template x-if="replyMessage">
                    <div class="relative bg-black bg-opacity-50 text-white p-2 rounded-t border-l-4 border-white ">
                        <div class="font-normal text-[10px] text-grey-light" x-text="replyMessage.name"></div>
                        <div class="text-sm" x-text="replyMessage.text"></div>
                        <template x-if="replyMessage.image">
                            <img :src="replyMessage.image" alt="reply image" class="mt-2 rounded-lg">
                        </template>
                        <button
                            class="absolute top-0 right-0 flex items-center justify-center w-6 h-6 text-white rounded-full"
                            @click="removeReplyMessage()">
                            <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd" clip-rule="evenodd"
                                    d="M0.292893 0.292893C0.683417 -0.0976311 1.31658 -0.0976311 1.70711 0.292893L6 4.58579L10.2929 0.292893C10.6834 -0.0976311 11.3166 -0.0976311 11.7071 0.292893C12.0976 0.683417 12.0976 1.31658 11.7071 1.70711L7.41421 6L11.7071 10.2929C12.0976 10.6834 12.0976 11.3166 11.7071 11.7071C11.3166 12.0976 10.6834 12.0976 10.2929 11.7071L6 7.41421L1.70711 11.7071C1.31658 12.0976 0.683417 12.0976 0.292893 11.7071C-0.0976311 11.3166 -0.0976311 10.6834 0.292893 10.2929L4.58579 6L0.292893 1.70711C-0.0976311 1.31658 -0.0976311 0.683417 0.292893 0.292893Z"
                                    fill="white" />
                            </svg>
                        </button>
                    </div>
                </template>
                <template x-if="image">
                    <div class="flex items-center space-x-2 bg-black bg-opacity-50 p-3">
                        <div class="relative">
                            <img :src="image" alt="preview" class="w-16 h-16 object-cover rounded-2xl">
                            <button class="absolute -top-1 -right-2 flex items-center justify-center w-6 h-6 bg-black bg-opacity-50 text-white rounded-full" @click="removeImage()">
                                <svg width="12" height="12" viewBox="0 0 12 12" fill="none" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" clip-rule="evenodd"
                                        d="M0.292893 0.292893C0.683417 -0.0976311 1.31658 -0.0976311 1.70711 0.292893L6 4.58579L10.2929 0.292893C10.6834 -0.0976311 11.3166 -0.0976311 11.7071 0.292893C12.0976 0.683417 12.0976 1.31658 11.7071 1.70711L7.41421 6L11.7071 10.2929C12.0976 10.6834 12.0976 11.3166 11.7071 11.7071C11.3166 12.0976 10.6834 12.0976 10.2929 11.7071L6 7.41421L1.70711 11.7071C1.31658 12.0976 0.683417 12.0976 0.292893 11.7071C-0.0976311 11.3166 -0.0976311 10.6834 0.292893 10.2929L4.58579 6L0.292893 1.70711C-0.0976311 1.31658 -0.0976311 0.683417 0.292893 0.292893Z"
                                        fill="white" />
                                </svg>
                            </button>
                        </div>
                    </div>
                </template>
                <div class="flex items-center space-x-2 bg-black bg-opacity-50 p-3">
                    <input type="file" class="hidden" @change="handleFileUpload" x-ref="fileInput">
                    <button class="p-2 rounded" @click="$refs.fileInput.click()">
                        <svg width="28" height="23" viewBox="0 0 28 23" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                d="M8.0745 18.2801L10.3855 16.1759C10.5825 16.0085 10.7795 15.8811 10.9765 15.7938C11.1735 15.7064 11.3705 15.6627 11.5674 15.6627C11.7855 15.6627 12.0001 15.7064 12.2112 15.7938C12.4222 15.8738 12.6262 16.0085 12.8232 16.1977L14.48 17.7482L18.6377 13.9376C18.8488 13.7411 19.0669 13.5991 19.292 13.5118C19.5171 13.4245 19.7599 13.3808 20.0202 13.3808C20.2664 13.3808 20.5056 13.4281 20.7377 13.5227C20.9769 13.6173 21.1985 13.7593 21.4026 13.9485L25.2648 17.7035V9.26453C25.2648 8.73317 25.1312 8.33646 24.8638 8.07442C24.5965 7.8051 24.2201 7.67044 23.7347 7.67044H9.59409C9.10163 7.67044 8.72525 7.8051 8.46495 8.07442C8.20465 8.33646 8.0745 8.73317 8.0745 9.26453V18.2801ZM12.2112 13.5009C12.6403 13.9522 13.1644 14.1778 13.7835 14.1778C14.3885 14.1778 14.9056 13.9522 15.3348 13.5009C15.7709 13.0423 15.989 12.4964 15.989 11.8631C15.989 11.4555 15.887 11.077 15.683 10.7276C15.486 10.3782 15.2187 10.098 14.881 9.88688C14.5503 9.67579 14.1845 9.57025 13.7835 9.57025C13.1644 9.57025 12.6403 9.79953 12.2112 10.2581C11.782 10.7094 11.5674 11.2444 11.5674 11.8631C11.5674 12.4964 11.782 13.0423 12.2112 13.5009Z"
                                fill="#D11030" />
                            <path fill-rule="evenodd" clip-rule="evenodd"
                                d="M6.88204 22.0937C7.46596 22.6978 8.32776 22.9999 9.46745 22.9999H23.8719C25.0045 22.9999 25.8628 22.6978 26.4467 22.0937C27.0377 21.4968 27.3332 20.6161 27.3332 19.4514V9.07892C27.3332 7.91428 27.0377 7.03353 26.4467 6.43666C25.8628 5.8325 25.0045 5.53043 23.8719 5.53043H22.0041H19.9252H9.46745C8.32776 5.53043 7.46596 5.82886 6.88204 6.42574C6.29813 7.02261 6.00617 7.907 6.00617 9.07892V15.6627V17.8027V19.4514C6.00617 20.6161 6.29813 21.4968 6.88204 22.0937ZM23.7347 20.849H9.59409C9.10163 20.849 8.72525 20.718 8.46495 20.4559C8.20465 20.1939 8.0745 19.7972 8.0745 19.2658V18.2801V9.26453C8.0745 8.73317 8.20465 8.33646 8.46495 8.07442C8.72525 7.8051 9.10163 7.67044 9.59409 7.67044H23.7347C24.2201 7.67044 24.5965 7.8051 24.8638 8.07442C25.1312 8.33646 25.2648 8.73317 25.2648 9.26453V17.7035V19.2658C25.2648 19.7972 25.1312 20.1939 24.8638 20.4559C24.5965 20.718 24.2201 20.849 23.7347 20.849Z"
                                fill="#D11030" />
                            <path
                                d="M1.54238 16.9074C2.12629 17.5043 2.9881 17.8027 4.12779 17.8027H6.00617V15.6627H4.25442C3.76196 15.6627 3.38558 15.5317 3.12528 15.2697C2.87202 15.0003 2.74539 14.6036 2.74539 14.0796V4.07827C2.74539 3.54691 2.87202 3.15021 3.12528 2.88817C3.38558 2.61884 3.76196 2.48418 4.25442 2.48418H18.4056C18.891 2.48418 19.2639 2.61884 19.5242 2.88817C19.7915 3.15021 19.9252 3.54691 19.9252 4.07827V5.53043H22.0041V3.88174C22.0041 2.71711 21.7086 1.83636 21.1176 1.23948C20.5337 0.635329 19.6719 0.333252 18.5322 0.333252H4.12779C2.9881 0.333252 2.12629 0.635329 1.54238 1.23948C0.958462 1.83636 0.666504 2.71711 0.666504 3.88174V14.2543C0.666504 15.4262 0.958462 16.3106 1.54238 16.9074Z"
                                fill="#D11030" />
                        </svg>
                    </button>
                    <textarea class="flex-grow" placeholder="Type a message..." x-model="newMessage"></textarea>
                    
                    <button class="p-2 rounded-r-lg" @click="sendMessage()">
                        <svg width="30" height="30" viewBox="0 0 30 30" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M29.6373 0.362578C29.4686 0.19467 29.2554 0.0784161 29.0229 0.0274863C28.7904 -0.0234435 28.5482 -0.00693246 28.3248 0.0750782L0.824757 10.0751C0.587592 10.165 0.383407 10.325 0.239321 10.5338C0.0952345 10.7425 0.0180664 10.9902 0.0180664 11.2438C0.0180664 11.4975 0.0952345 11.7451 0.239321 11.9539C0.383407 12.1626 0.587592 12.3226 0.824757 12.4126L11.5623 16.7001L19.4873 8.75008L21.2498 10.5126L13.2873 18.4751L17.5873 29.2126C17.6799 29.4452 17.8402 29.6446 18.0475 29.785C18.2548 29.9254 18.4994 30.0003 18.7498 30.0001C19.0024 29.9949 19.2475 29.9133 19.4528 29.766C19.6581 29.6187 19.8139 29.4127 19.8998 29.1751L29.8998 1.67508C29.9849 1.45392 30.0055 1.21312 29.959 0.980733C29.9125 0.748349 29.8009 0.533966 29.6373 0.362578Z"
                                fill="#D11030" />
                        </svg>

                    </button>
                </div>
                
            </div>
        </div>
    </div>

    <script>
        function chatComponent() {
            return {
                messages: [
                    { id: 1, text: 'Hello!', sender: 'me',  name: 'Athalia Putri', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-2.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                    { id: 2, text: 'Hi there!', sender: 'you', name: 'Raki Devon', avatar: 'https://entertaiment-app-ashy.vercel.app/image/user/user-dating-9.png', time: new Date().toLocaleTimeString(), online: true },
                ],
                newMessage: '',
                replyMessage: null,
                image: null,
                setReplyMessage(message) {
                    this.replyMessage = message;
                },
                removeReplyMessage() {
                    this.replyMessage = null;
                },
                handleFileUpload(event) {
                    const file = event.target.files[0];
                    if (file) {
                        const reader = new FileReader();
                        reader.onload = (e) => {
                            this.image = e.target.result;
                        };
                        reader.readAsDataURL(file);
                    }
                },
                removeImage() {
                    this.image = null;
                    this.$refs.fileInput.value = null;
                },
                sendMessage() {
                    if (this.newMessage.trim() !== '' || this.image) {
                        this.messages.push({
                            id: this.messages.length + 1,
                            text: this.newMessage,
                            sender: 'me',
                            name: 'Athalia Putri',
                            avatar: './image/user/user-dating-2.png',
                            time: new Date().toLocaleTimeString(),
                            replyTo: this.replyMessage ? this.replyMessage.id : null,
                            image: this.image,
                            online: true
                        });
                        this.newMessage = '';
                        this.replyMessage = null;
                        this.image = null;
                        this.$refs.fileInput.value = null;
                    }
                },
                getMessageById(id) {
                    return this.messages.find(message => message.id === id) || {};
                }
            }
        }
    </script>
</body>

</html>