            <div
              class="header flex items-center justify-between px-4 gap-3 md:px-8 md:gap-8 h-[63px] border-b border-solid border-primary"
            >
              <div id="bugger-menu" class="cursor-pointer">
                  <svg width="32" height="33" viewBox="0 0 32 33" fill="none" xmlns="http://www.w3.org/2000/svg" >
                    <path fill-rule="evenodd"  clip-rule="evenodd"
                      d="M0 6.27393C0 3.11499 2.61499 0.5 5.77393 0.5H26.2261C29.3851 0.5 32.0001 3.11499 32.0001 6.27393V26.7261C32.0001 29.8851 29.3851 32.5001 26.2261 32.5001H5.77393C2.61499 32.5 0 29.885 0 26.726L0 6.27393ZM5.31222 7.60188C5.31222 6.83351 5.93511 6.21056 6.70354 6.21056H25.2965C26.0649 6.21056 26.6877 6.83345 26.6877 7.60188C26.6877 8.37032 26.0649 8.99321 25.2965 8.99321H6.70354C5.93516 8.99321 5.31222 8.37032 5.31222 7.60188ZM5.31222 25.53C5.31222 24.7615 5.93511 24.1385 6.70354 24.1385H25.2965C26.0649 24.1385 26.6877 24.7615 26.6877 25.53C26.6877 26.2982 26.0649 26.9212 25.2965 26.9212H6.70354C5.93516 26.9212 5.31222 26.2982 5.31222 25.53ZM17.328 12.1861C16.5597 12.1861 15.9367 12.809 15.9367 13.5775C15.9367 14.3458 16.5597 14.9688 17.328 14.9688H25.2964C26.0648 14.9688 26.6877 14.3458 26.6877 13.5775C26.6877 12.8091 26.0648 12.1861 25.2964 12.1861H17.328ZM15.9367 19.5544C15.9367 18.786 16.5597 18.163 17.328 18.163H25.2964C26.0648 18.163 26.6877 18.786 26.6877 19.5544C26.6877 20.3227 26.0648 20.9457 25.2964 20.9457H17.328C16.5597 20.9457 15.9367 20.3227 15.9367 19.5544ZM11.3442 12.6171C11.7966 12.8592 12.079 13.3307 12.079 13.8437V19.156C12.079 19.6691 11.7966 20.1406 11.3442 20.3826C10.8918 20.6248 10.3429 20.5984 9.91596 20.3137L5.93175 17.6575C5.54467 17.3995 5.31222 16.965 5.31222 16.4999C5.31222 16.0347 5.54472 15.6003 5.93175 15.3422L9.91596 12.6861C10.3429 12.4015 10.8918 12.375 11.3442 12.6171Z"
                      fill="#1C64F2" />
                  </svg>
              </div>
              <div class="logo-mobile mr-auto block md:hidden">
                
              </div>
              <div class="header-right flex items-center gap-0">
                <div
                  class="wallet flex items-center gap-2 p-2 px-2 cursor-pointer"
                >
                  <i data-feather="credit-card" style="color: #6b6bf1;"></i>
                  <span class="title text-blue-600">Balance:</span>
                  <span class="text-blue-600">200 USDT</span>
                </div>
                <div class="language p-2 px-3">
                  <select class="languages-list">
                  <?php foreach (LANG_LIST as $lang){ ?>
                    <option value="<?= $lang ?>"<?= $lang == LANG ? ' selected':''; ?>><?= $lang ?></option>
                  <?php } ?>
                  </select>
                </div>
<script>
document.querySelector('.languages-list').addEventListener('change', function() {
  var selectedLang = this.value;
  var currentUrl = new URL(window.location.href);
  var params = currentUrl.searchParams;
  params.set('lang', selectedLang);
  window.history.replaceState({}, '', currentUrl.toString());
  window.location.reload();
});
</script>
                <div class="notify">
                  
                </div>
                <div class="avatar w-8 h-8 cursor-pointer">
                    <a href="<?= admin_url('auth/logout/') ?>" title="Logout"><img class="rounded-md" src="/avatar.webp" alt="Avatar User" /></a>
                </div>
              </div>
            </div>