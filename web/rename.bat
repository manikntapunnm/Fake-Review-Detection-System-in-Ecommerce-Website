@echo off
for %%A in (
admin-view-feedback-customerwise.html
admin-view-feedback-productwise.html
admin-view-order.html
admin-view-order-details.html
admin-view-product.html
admin-view-product-details.html
customers-category.html
customers-checkout.html
customers-contact.html
customers-different-address.html
customers-feedback.html
customers-mycart.html
customers-myorders.html
customers-myprofile.html
customers-mywishlist.html
customers-orderdetails.html
customers-orderlist.html
customers-productdetails.html
customers-productgrid.html
customers-productlist.html
index.html
main-about.html
main-category.html
main-checkout.html
main-customers-login.html
main-customers-register.html
main-productdetails.html
main-productgrid.html
main-productlist.html
main-sellers-login.html
main-admin-login.html
main-contact.html
main-pd1.html
customers-home.html
admin-add-product.html
admin-fake-reviews-analysis-graph.html
admin-fake-reviews-uncertified.html
admin-home.html
admin-sentiment-analysis.html
admin-view-customers.html

) do (
    ren "%%A" "%%~nA.jsp"
)
