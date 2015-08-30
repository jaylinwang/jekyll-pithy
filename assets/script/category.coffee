---
#category相关操作
---

$ ->
  init()
  changeCategory()


init = () ->
      category = location.hash
      if category isnt ''
        $(category).removeClass "hide"
      else
        $('#all').removeClass "hide"

changeCategory = () ->
    $('.catelink').on 'click',() ->
      $('section.category').addClass 'hide'
      category = $(this).data 'target-cate'
      $(category).removeClass "hide"
