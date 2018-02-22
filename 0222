install.packages('devtools')
devtools::install_version('RSelenium', version = '1.3.5')

checkForServer()
startServer()

firefox <- remoteDriver(browserName = 'chrome')
firefox$open()
firefox$navigate('https://www.amazon.com/Dyson-Multiplier-AM08-Certified-Refurbished/product-reviews/B00KTAOTXA/ref=cm_cr_dp_d_show_all_btm?ie=UTF8&reviewerType=all_reviews')

link <- firefox$getPageSource()
link <- read_html(link[[1]])

text <- str_trim(html_text(html_nodes(link, 'span.a-size-base.review-text')))

nextButton = firefox$findElements(using = 'css selector', 'ul.a-pagination a')
nextButton[[2]]$clickElement()

link <- firefox$getPageSource()
link <- read_html(link[[1]])

text2 <- str_trim(html_text(html_nodes(link, 'span.a-size-base.review-text')))

html_text(html_nodes(html_nodes(link, 'div#cm_cr-review_list.a-section.a-spacing-none.review-views.celwidget'), 'span.a-icon-alt'))
