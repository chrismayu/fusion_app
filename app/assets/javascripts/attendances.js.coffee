# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  $("#attendance").datepicker
    showButtonPanel: true
    dateFormat: "dd-mm-yy"

  $("#attendance").datepicker "setDate", new Date()
  $.datepicker._gotoToday = (id) ->
    target = $(id)
    inst = @_getInst(target[0])
    if @_get(inst, "gotoCurrent") and inst.currentDay
      inst.selectedDay = inst.currentDay
      inst.drawMonth = inst.selectedMonth = inst.currentMonth
      inst.drawYear = inst.selectedYear = inst.currentYear
    else
      date = new Date()
      inst.selectedDay = date.getDate()
      inst.drawMonth = inst.selectedMonth = date.getMonth()
      inst.drawYear = inst.selectedYear = date.getFullYear()

      # the below two lines are new
      @_setDateDatepicker target, date
      @_selectDate id, @_getDateDatepicker(target)
    @_notifyChange inst
    @_adjustDate target
