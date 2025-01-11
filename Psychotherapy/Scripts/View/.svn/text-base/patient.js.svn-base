// JavaScript Document
$(document).ready(function () {
    /*	var div = $("form>div :last-child");
    div.mouseover(function(){
    $(this).addClass("selected").siblings().removeClass("selected");
    });
    div.mouseout(function(){
    $(this).removeClass("selected");
    });
    */

    $("#ethnicity").change(function () { elementHideControl("ethnicity"); });
    $("#livingsituation").change(function () { elementHideControl("livingsituation"); });
    $("#relationship").change(function () { elementHideControl("relationship"); });
    $("#treatment").change(function () { elementHideControl("treatment"); });
    // +++++++++++++++++++++++++++++++++++++++++++++
    $("#list").css("height", "1000px");
    $(".form_content").css("height", "1000px");
    $("table :input").before("&nbsp;&nbsp;");
    $("input[type='radio']").before("&nbsp;&nbsp;");
    $("input[type='checkbox']").after("&nbsp;");
    $(".con_right div").css({ margin: "5px 0px" });


    // +++++++++++++++++++++ I.one ++++++++++++++++++++++++
    $("img[id='img01']").click(function () { changeImgDiv("img01", "ch01"); });
    //1.0==============================
    $("input[name='YesNo_01']").change(function () { $("#ch01_01").toggleClass("hide"); clearCheckSpan("ch01_01"); });
    $("input[name='YesNo_01_01']").change(function () { $("#ch01_01_01_01").toggleClass("hide"); clearCheckSpan("ch01_01_01_01") });
    $("input[name='YesNo_01_02']").change(function () { $("#ch01_01_02_01").toggleClass("hide"); clearCheckSpan("ch01_01_02_01"); });
    $("input[name='YesNo_01_02_01']").change(function () { $("#ch01_01_02_01_01").toggleClass("hide"); clearCheckSpan("ch01_01_02_01_01"); });
    $("input[name='YesNo_01_02_01_01']").change(function () { $("#ch01_01_02_01_01_01").toggleClass("hide"); });
    $("input[name='YesNo_01_03']").change(function () { $("#ch01_01_03_01").toggleClass("hide"); });
    $("input[name='YesNo_01_04']").change(function () { $("#ch01_01_04_01").toggleClass("hide"); clearCheckSpan('ch01_01_04_01'); });
    $("input[name='YesNo_01_05']").change(function () { $("#ch01_01_05_01").toggleClass("hide"); clearCheckSpan('ch01_01_05_01'); });
    $("input[name='YesNo_01_06']").change(function () { $("#ch01_01_06_01").toggleClass("hide"); });

    //2.0==============================
    $("input[name='YesNo_02']").change(function () { $("#ch01_02").toggleClass("hide"); clearCheckSpan("ch01_02"); });

    $("input[name='YesNo_02_02']").change(function () { $("#ch01_02_02_01").toggleClass("hide"); clearCheckSpan("ch01_02_02_01"); });
    $("input[name='YesNo_02_02_01']").change(function () { $("#ch01_02_02_01_01").toggleClass("hide"); clearCheckSpan("ch01_02_02_01_01"); });
    $("input[name='YesNo_02_02_01_01']").change(function () { $("#ch01_02_02_01_01_01").toggleClass("hide"); });
    $("input[name='YesNo_02_03']").change(function () { $("#ch01_02_03_01").toggleClass("hide"); });
    $("input[name='YesNo_02_04']").change(function () { $("#ch01_02_04_01").toggleClass("hide"); });
    $("input[name='YesNo_02_05']").change(function () { $("#ch01_02_05_01").toggleClass("hide"); });
    $("input[name='YesNo_02_06']").change(function () { $("#ch01_02_06_01").toggleClass("hide"); });

    //3.0==============================
    $("input[name='YesNo_03']").change(function () { $("#ch01_03").toggleClass("hide"); clearCheckSpan("ch01_03"); });
    $("input[name='YesNo_03_01']").change(function () { $("#ch01_03_01").toggleClass("hide"); });

    $("input[name='ch01_03_02_01']").click(function () { $("#ch01_03_02_01").toggleClass("hide"); openAndcloseDIV("ch01_03_02_01"); });
    $("input[name='ch01_03_02_01_01']").click(function () { $("#ch01_03_02_01_01").toggleClass("hide"); });
    $("input[name='ch01_03_02_01_02']").click(function () { $("#ch01_03_02_01_02").toggleClass("hide"); });
    $("input[name='ch01_03_02_01_03']").click(function () { $("#ch01_03_02_01_03").toggleClass("hide"); });
    $("input[name='ch01_03_02_01_04']").click(function () { $("#ch01_03_02_01_04").toggleClass("hide"); });
    $("input[name='ch01_03_02_02']").click(function () { $("#ch01_03_02_02").toggleClass("hide"); });
    $("input[name='ch01_03_02_03']").click(function () { $("#ch01_03_02_03").toggleClass("hide"); });
    $("input[name='ch01_03_02_04']").click(function () { $("#ch01_03_02_04").toggleClass("hide"); });
    $("input[name='ch01_03_02_05']").click(function () { $("#ch01_03_02_05").toggleClass("hide"); });
    $("input[name='ch01_03_02_06']").click(function () { $("#ch01_03_02_06").toggleClass("hide"); });
    $("input[name='ch01_03_02_07']").click(function () { $("#ch01_03_02_07").toggleClass("hide"); });
    $("input[name='ch01_03_02_08']").click(function () { $("#ch01_03_02_08").toggleClass("hide"); });
    $("input[name='ch01_03_02_09']").click(function () { $("#ch01_03_02_09").toggleClass("hide"); });
    $("input[name='ch01_03_02_10']").click(function () { $("#ch01_03_02_10").toggleClass("hide"); cleanInput("ch01_03_02_10"); });
    $("input[name='ch01_03_02_11']").click(function () { $("#ch01_03_02_11").toggleClass("hide"); cleanInput("ch01_03_02_11"); });
    $("input[name='ch01_03_02_12']").click(function () { $("#ch01_03_02_12").toggleClass("hide"); cleanInput("ch01_03_02_12"); });

    $("#ch01_03_03_01").click(function () { $("#ch01_03_03_01_01").toggleClass("hide"); });

    $("input[name='ch01_03_03_06']").click(function () { $("#ch01_03_03_06_01").toggleClass("hide"); });

    $("input[name='ch01_03_05_01']").click(function () { $("#ch01_03_05_01").toggleClass("hide"); });
    $("input[name='ch01_03_05_02']").click(function () { $("#ch01_03_05_02").toggleClass("hide"); });
    $("input[name='ch01_03_05_03']").click(function () { $("#ch01_03_05_03").toggleClass("hide"); });

    $("input[name='ch01_03_06_01']").click(function () { $("#ch01_03_06_01").toggleClass("hide"); });
    $("input[name='ch01_03_06_02']").click(function () { $("#ch01_03_06_02").toggleClass("hide"); });
    $("input[name='ch01_03_06_03']").click(function () { $("#ch01_03_06_03").toggleClass("hide"); });
    $("input[name='ch01_03_06_04']").click(function () { $("#ch01_03_06_04").toggleClass("hide"); });
    $("input[name='ch01_03_06_05']").click(function () { $("#ch01_03_06_05").toggleClass("hide"); });


    $("input[name='ch01_03_02_10_01']").blur(function () { IsEmpty("ch01_03_02_10_01"); });
    $("input[name='ch01_03_02_10_02']").blur(function () { IsEmpty("ch01_03_02_10_02"); });
    $("input[name='ch01_03_02_10_03']").blur(function () { IsEmpty("ch01_03_02_10_03"); });
    $("input[name='ch01_03_02_10_04']").blur(function () { IsEmpty("ch01_03_02_10_04"); });
    $("input[name='ch01_03_02_10_05']").blur(function () { IsEmpty("ch01_03_02_10_05"); });
    $("input[name='ch01_03_02_11_01']").blur(function () { IsEmpty("ch01_03_02_11_01"); });
    $("input[name='ch01_03_02_11_02']").blur(function () { IsEmpty("ch01_03_02_11_02"); });
    $("input[name='ch01_03_02_11_03']").blur(function () { IsEmpty("ch01_03_02_11_03"); });
    $("input[name='ch01_03_02_11_04']").blur(function () { IsEmpty("ch01_03_02_11_04"); });
    $("input[name='ch01_03_02_11_05']").blur(function () { IsEmpty("ch01_03_02_11_05"); });
    $("input[name='ch01_03_02_12_01']").blur(function () { IsEmpty("ch01_03_02_12_01"); });
    $("input[name='ch01_03_02_12_02']").blur(function () { IsEmpty("ch01_03_02_12_02"); });
    $("input[name='ch01_03_02_12_03']").blur(function () { IsEmpty("ch01_03_02_12_03"); });
    $("input[name='ch01_03_02_12_04']").blur(function () { IsEmpty("ch01_03_02_12_04"); });
    $("input[name='ch01_03_02_12_05']").blur(function () { IsEmpty("ch01_03_02_12_05"); });


    $("input[name='YesNo_03_05']").change(function () { $("#ch01_03_05").toggleClass("hide"); openAndcloseDIV("ch01_03_05"); });
    $("input[name='YesNo_03_06']").change(function () { $("#ch01_03_06").toggleClass("hide"); openAndcloseDIV("ch01_03_06"); });
    $("input[name='YesNo_03_07']").change(function () { $("#ch01_03_07").toggleClass("hide"); });
    $("input[name='YesNo_03_08']").change(function () { $("#ch01_03_08").toggleClass("hide"); });

    //4.0==============================
    $("input[name='YesNo_04']").change(function () { $("#ch01_04").toggleClass("hide"); clearCheckSpan("ch01_04"); });
    $("input[name='YesNo_04_01']").change(function () { $("#ch01_04_01").toggleClass("hide"); clearCheckSpan("ch01_04_01"); });
    $("input[name='YesNo_04_01_03']").change(function () { $("#ch01_04_01_03_01").toggleClass("hide"); });
    $("input[name='YesNo_04_01_04']").change(function () { $("#ch01_04_01_04_01").toggleClass("hide"); });
    $("input[name='YesNo_04_01_05']").change(function () { $("#ch01_04_01_05_01").toggleClass("hide"); });
    $("input[name='YesNo_04_01_06']").change(function () { $("#ch01_04_01_06_01").toggleClass("hide"); });
    $("input[name='YesNo_04_01_07']").change(function () { $("#ch01_04_01_07_01").toggleClass("hide"); });
    $("input[name='YesNo_04_02']").change(function () { $("#ch01_04_02").toggleClass("hide"); clearCheckSpan("ch01_04_02"); });
    $("input[name='YesNo_04_02_01']").change(function () { $("#ch01_04_02_01_01").toggleClass("hide"); });
    $("input[name='YesNo_04_02_02']").change(function () { $("#ch01_04_02_02_01").toggleClass("hide"); });
    $("input[name='YesNo_04_02_03']").change(function () { $("#ch01_04_02_03_01").toggleClass("hide"); });
    $("input[name='YesNo_04_02_04']").change(function () { $("#ch01_04_02_04_01").toggleClass("hide"); });

    //5.0==============================
    $("input[name='YesNo_05']").change(function () { $("#ch01_05").toggleClass("hide"); clearCheckDiv("ch01_05"); });
    $("input[name='YesNo_05_01']").change(function () { $("#ch01_05_01").toggleClass("hide"); clearCheckDiv("ch01_05_01"); });
    $("input[name='YesNo_05_01_01']").change(function () { $("#ch01_05_01_01").toggleClass("hide"); });
    $("input[name='YesNo_05_02']").change(function () { $("#ch01_05_02").toggleClass("hide"); clearCheckDiv("ch01_05_02"); });
    $("input[name='YesNo_05_02_01']").change(function () { $("#ch01_05_02_01").toggleClass("hide"); clearCheckDiv("ch01_05_02_01"); });
    $("input[name='YesNo_05_02_01_01']").change(function () { $("#ch01_05_02_01_01").toggleClass("hide"); });
    $("input[name='YesNo_05_02_01_02']").change(function () { $("#ch01_05_02_01_02").toggleClass("hide"); });
    $("input[name='YesNo_05_02_01_03']").change(function () { $("#ch01_05_02_01_03").toggleClass("hide"); });
    $("input[name='YesNo_05_03']").change(function () { $("#ch01_05_03").toggleClass("hide"); clearDiv("ch01_05_03"); });
    $("input[name='YesNo_05_03_01']").change(function () { $("#ch01_05_03_01").toggleClass("hide"); clearDiv("ch01_05_03_01"); });
    $("input[name='YesNo_05_03_01_01']").change(function () { $("#ch01_05_03_01_01").toggleClass("hide"); });
    $("input[name='YesNo_05_04']").change(function () { $("#ch01_05_04").toggleClass("hide"); clearCheckDiv("ch01_05_04"); });
    $("input[name='YesNo_05_04_01']").change(function () { $("#ch01_05_04_01").toggleClass("hide"); });
    $("input[name='YesNo_05_04_02']").change(function () { $("#ch01_05_04_02").toggleClass("hide"); });
    $("input[name='YesNo_05_05']").change(function () { $("#ch01_05_05").toggleClass("hide"); });
    $("input[name='YesNo_05_06']").change(function () { $("#ch01_05_06").toggleClass("hide"); clearCheckDiv("ch01_05_06"); });
    $("input[name='YesNo_05_06_01']").change(function () { $("#ch01_05_06_01").toggleClass("hide"); });
    $("input[name='YesNo_05_06_02']").change(function () { $("#ch01_05_06_02").toggleClass("hide"); });

    $("input[name='YesNo_05_07']").change(function () { $("#ch01_05_07").toggleClass("hide"); clearCheckDiv("ch01_05_07") });
    $("input[name='YesNo_05_07_01']").change(function () { $("#ch01_05_07_01").toggleClass("hide"); openAndcloseDIV("ch01_05_07_01") });
    $("input[name='YesNo_05_07_01_05']").change(function () { $("#ch01_05_07_01_05").toggleClass("hide"); });
    $("input[name='YesNo_05_07_01_07']").change(function () { $("#ch01_05_07_01_07").toggleClass("hide"); openAndcloseDIV2("ch01_05_07_01_07"); });
    $("input[name='ch01_05_07_01_07_01']").click(function () { $("#ch01_05_07_01_07_01").toggleClass("hide"); });
    $("input[name='ch01_05_07_01_07_02']").click(function () { $("#ch01_05_07_01_07_02").toggleClass("hide"); });
    $("input[name='ch01_05_07_01_07_03']").click(function () { $("#ch01_05_07_01_07_03").toggleClass("hide"); });
    $("input[name='ch01_05_07_01_07_04']").click(function () { $("#ch01_05_07_01_07_04").toggleClass("hide"); });
    $("input[name='YesNo_05_07_01_08']").change(function () { $("#ch01_05_07_01_08").toggleClass("hide"); });
    $("input[name='YesNo_05_07_01_09']").change(function () { $("#ch01_05_07_01_09").toggleClass("hide"); });
    $("input[name='YesNo_05_07_02']").change(function () { $("#ch01_05_07_02").toggleClass("hide"); clearCheckDiv("ch01_05_07_02"); });
    $("input[name='YesNo_05_07_02_01']").change(function () { $("#ch01_05_07_02_01").toggleClass("hide"); });
    $("input[name='YesNo_05_07_03']").change(function () { $("#ch01_05_07_03").toggleClass("hide"); clearCheckDiv("ch01_05_07_03"); });
    $("input[name='YesNo_05_07_03_01']").change(function () { $("#ch01_05_07_03_01").toggleClass("hide"); });
    $("input[name='YesNo_05_07_03_03']").change(function () { $("#ch01_05_07_03_03").toggleClass("hide"); });
    $("input[name='YesNo_05_07_04']").change(function () { $("#ch01_05_07_04").toggleClass("hide"); clearCheckDiv("ch01_05_07_04"); });
    $("input[name='YesNo_05_07_04_02']").change(function () { $("#ch01_05_07_04_02").toggleClass("hide"); });

    $("input[name='YesNo_05_08']").change(function () { $("#ch01_05_08").toggleClass("hide"); });
    $("input[name='YesNo_05_09']").change(function () { $("#ch01_05_09").toggleClass("hide"); });
    $("input[name='YesNo_05_10']").change(function () { $("#ch01_05_10").toggleClass("hide"); clearDiv("ch01_05_10"); });
    $("input[name='YesNo_05_10_01']").change(function () { $("#ch01_05_10_01").toggleClass("hide"); });
    $("input[name='YesNo_05_11']").change(function () { $("#ch01_05_11").toggleClass("hide"); });

    //6.0==============================
    $("input[name='YesNo_06']").change(function () { $("#ch01_06").toggleClass("hide"); clearCheckDiv("ch01_06"); });
    $("input[name='YesNo_06_01']").change(function () { $("#ch01_06_01").toggleClass("hide"); clearCheckDiv("ch01_06_01"); });
    $("input[name='YesNo_06_01_01']").change(function () { $("#ch01_06_01_01").toggleClass("hide"); clearDiv("ch01_06_01_01"); });
    $("input[name='YesNo_06_01_01_01']").change(function () { $("#ch01_06_01_01_01").toggleClass("hide"); });
    $("input[name='YesNo_06_01_04']").change(function () { $("#ch01_06_01_04").toggleClass("hide"); });
    $("input[name='YesNo_06_02']").change(function () { $("#ch01_06_02").toggleClass("hide"); clearCheckDiv("ch01_06_02"); });
    $("input[name='YesNo_06_02_01']").change(function () { $("#ch01_06_02_01").toggleClass("hide"); });
    $("input[name='YesNo_06_03']").change(function () { $("#ch01_06_03").toggleClass("hide"); clearCheckDiv("ch01_06_03"); });
    $("input[name='YesNo_06_03_02']").change(function () { $("#ch01_06_03_02").toggleClass("hide"); });
    $("input[name='YesNo_06_03_03']").change(function () { $("#ch01_06_03_03").toggleClass("hide"); });
    $("input[name='YesNo_06_03_04']").change(function () { $("#ch01_06_03_04").toggleClass("hide"); });
    $("input[name='YesNo_06_03_05']").change(function () { $("#ch01_06_03_05").toggleClass("hide"); });
    $("input[name='YesNo_06_04']").change(function () { $("#ch01_06_04").toggleClass("hide"); clearCheckDiv("ch01_06_04"); });
    $("input[name='YesNo_06_04_03']").change(function () { $("#ch01_06_04_03").toggleClass("hide"); });
    $("input[name='YesNo_06_05']").change(function () { $("#ch01_06_05").toggleClass("hide"); clearCheckDiv("ch01_06_05"); });
    $("input[name='YesNo_06_05_01']").change(function () { $("#ch01_06_05_01").toggleClass("hide"); });
    $("input[name='YesNo_06_05_02']").change(function () { $("#ch01_06_05_02").toggleClass("hide"); });
    $("input[name='YesNo_06_05_03']").change(function () { $("#ch01_06_05_03").toggleClass("hide"); });
    $("input[name='YesNo_06_05_04']").change(function () { $("#ch01_06_05_04").toggleClass("hide"); });
    $("input[name='YesNo_06_06']").change(function () { $("#ch01_06_06").toggleClass("hide"); clearCheckDiv("ch01_06_06"); });
    $("input[name='YesNo_06_06_02']").change(function () { $("#ch01_06_06_02").toggleClass("hide"); clearCheckDiv("ch01_06_06_02"); });
    $("input[name='YesNo_06_06_02_01']").change(function () { $("#ch01_06_06_02_01").toggleClass("hide"); });
    $("input[name='YesNo_06_06_02_02']").change(function () { $("#ch01_06_06_02_02").toggleClass("hide"); });
    $("input[name='YesNo_06_06_02_03']").change(function () { $("#ch01_06_06_02_03").toggleClass("hide"); });
    $("input[name='YesNo_06_06_04']").change(function () { $("#ch01_06_06_04").toggleClass("hide"); });
    $("input[name='YesNo_06_07']").change(function () { $("#ch01_06_07").toggleClass("hide"); });

    // +++++++++++++++++++++ II.two ++++++++++++++++++++++++
    $("img[id='img02']").click(function () { changeImgDiv("img02", "ch02"); });

    $("input[name='YesNo2_01']").change(function () { $("#ch02_01").toggleClass("hide"); });
    $("input[name='YesNo2_01_01']").change(function () { $("#ch02_01_01").toggleClass("hide"); clearCheckDiv("ch02_01_01"); });
    $("input[name='YesNo2_01_01_02']").change(function () { $("#ch02_01_01_02").toggleClass("hide"); });
    $("input[name='YesNo2_01_02']").change(function () { $("#ch02_01_02").toggleClass("hide"); cleanInputBox("ch02_01_02"); });
    $("input[name='ch02_01_02_01']").click(function () { $("#ch02_01_02_01").toggleClass("hide"); });
    $("input[name='ch02_01_02_02']").click(function () { $("#ch02_01_02_02").toggleClass("hide"); });
    $("input[name='YesNo2_01_03']").change(function () { $("#ch02_01_03").toggleClass("hide"); showAndhideDiv("ch02_01_03"); });
    $("input[name='YesNo2_01_01_03']").change(function () { $("#ch02_01_01_03").toggleClass("hide"); });
    $("input[name='ch02_01_03_01']").blur(function () { IsEmpty("ch02_01_03_01"); });
    $("input[name='ch02_01_03_02']").blur(function () { IsEmpty("ch02_01_03_02"); });
    $("input[name='ch02_01_03_03']").blur(function () { IsEmpty("ch02_01_03_03"); });
    $("input[name='ch02_01_03_04']").blur(function () { IsEmpty("ch02_01_03_04"); });
    $("input[name='ch02_01_03_05']").blur(function () { IsEmpty("ch02_01_03_05"); });
    $("input[name='ch02_01_03_06']").blur(function () { IsEmpty("ch02_01_03_06"); });
    $("input[name='ch02_01_03_07']").blur(function () { IsEmpty("ch02_01_03_07"); });
    $("input[name='ch02_01_03_08']").blur(function () { IsEmpty("ch02_01_03_08"); });
    $("input[name='ch02_01_03_09']").blur(function () { IsEmpty("ch02_01_03_09"); });
    $("input[name='ch02_01_03_10']").blur(function () { IsEmpty("ch02_01_03_10"); });
    $("input[name='YesNo2_01_04']").change(function () { $("#ch02_01_04").toggleClass("hide"); cleanInputBox("ch02_01_04"); });
    $("input[name='ch02_01_04_05']").click(function () { $("#ch02_01_04_05").toggleClass("hide"); });

    // +++++++++++++++++++++ III.three ++++++++++++++++++++++++
    $("img[id='img03']").click(function () { changeImgDiv("img03", "ch03"); });

    $("input[name='YesNo3_01']").change(function () { $("#ch03_01").toggleClass("hide"); });
    $("input[name='YesNo3_01_01']").change(function () { $("#ch03_01_01").toggleClass("hide"); cleanInputBox("ch03_01_01"); });
    $("input[name='ch03_01_01_06']").click(function () { $("#ch03_01_01_06_01").toggleClass("hide"); });
    $("input[name='ch03_01_01_08']").click(function () { $("#ch03_01_01_08").toggleClass("hide"); showAndhideDiv("ch03_01_01_08"); });
    $("input[name='ch03_01_01_08_01']").blur(function () { IsEmpty("ch03_01_01_08_01"); });
    $("input[name='ch03_01_01_08_02']").blur(function () { IsEmpty("ch03_01_01_08_02"); });
    $("input[name='ch03_01_01_08_03']").blur(function () { IsEmpty("ch03_01_01_08_03"); });
    $("input[name='ch03_01_01_08_04']").blur(function () { IsEmpty("ch03_01_01_08_04"); });
    $("input[name='ch03_01_01_08_05']").blur(function () { IsEmpty("ch03_01_01_08_05"); });
    $("input[name='YesNo3_01_02']").change(function () { $("#ch03_01_02").toggleClass("hide"); openAndcloseDIV("ch03_01_02"); });
    $("input[name='YesNo3_01_03']").change(function () { $("#ch03_01_03").toggleClass("hide"); openAndcloseDIV("ch03_01_03"); });

    // +++++++++++++++++++++ IV.four ++++++++++++++++++++++++
    $("img[id='img04']").click(function () { changeImgDiv("img04", "ch04"); });

    $("input[name='YesNo4_01']").change(function () { $("#ch04_01").toggleClass("hide"); showAndhideDiv("ch04_01"); });
    $("input[name='ch04_01_01']").blur(function () { IsEmpty("ch04_01_01"); });
    $("input[name='ch04_01_02']").blur(function () { IsEmpty("ch04_01_02"); });
    $("input[name='ch04_01_03']").blur(function () { IsEmpty("ch04_01_03"); });
    $("input[name='ch04_01_04']").blur(function () { IsEmpty("ch04_01_04"); });
    $("input[name='ch04_01_05']").blur(function () { IsEmpty("ch04_01_05"); });
    $("input[name='YesNo4_02']").change(function () { $("#ch04_02").toggleClass("hide"); showAndhideDiv("ch04_02"); });
    $("input[name='ch04_02_01']").blur(function () { IsEmpty("ch04_02_01"); });
    $("input[name='ch04_02_02']").blur(function () { IsEmpty("ch04_02_02"); });
    $("input[name='ch04_02_03']").blur(function () { IsEmpty("ch04_02_03"); });
    $("input[name='ch04_02_04']").blur(function () { IsEmpty("ch04_02_04"); });
    $("input[name='ch04_02_05']").blur(function () { IsEmpty("ch04_02_05"); });
    $("input[name='YesNo4_03']").change(function () { $("#ch04_03").toggleClass("hide"); showAndhideDiv("ch04_03"); });
    $("input[name='ch04_03_01']").blur(function () { IsEmpty("ch04_03_01"); });
    $("input[name='ch04_03_02']").blur(function () { IsEmpty("ch04_03_02"); });
    $("input[name='ch04_03_03']").blur(function () { IsEmpty("ch04_03_03"); });
    $("input[name='ch04_03_04']").blur(function () { IsEmpty("ch04_03_04"); });
    $("input[name='ch04_03_05']").blur(function () { IsEmpty("ch04_03_05"); });
    $("input[name='YesNo4_04']").change(function () { $("#ch04_04").toggleClass("hide"); showAndhideDiv("ch04_04"); });
    $("input[name='ch04_04_01']").blur(function () { IsEmpty("ch04_04_01"); });
    $("input[name='ch04_04_02']").blur(function () { IsEmpty("ch04_04_02"); });
    $("input[name='ch04_04_03']").blur(function () { IsEmpty("ch04_04_03"); });
    $("input[name='ch04_04_04']").blur(function () { IsEmpty("ch04_04_04"); });
    $("input[name='ch04_04_05']").blur(function () { IsEmpty("ch04_04_05"); });
    $("input[name='ch04_04_06']").blur(function () { IsEmpty("ch04_04_06"); });
    $("input[name='ch04_04_07']").blur(function () { IsEmpty("ch04_04_07"); });
    $("input[name='ch04_04_08']").blur(function () { IsEmpty("ch04_04_08"); });
    $("input[name='ch04_04_09']").blur(function () { IsEmpty("ch04_04_09"); });
    $("input[name='ch04_04_10']").blur(function () { IsEmpty("ch04_04_10"); });
    // +++++++++++++++++++++ V.five ++++++++++++++++++++++++
    $("img[id='img05']").click(function () { changeImgDiv("img05", "ch05"); });

    $("input[name='YesNo5_01']").change(function () { $("#ch05_01").toggleClass("hide"); });
    $("input[name='YesNo5_01_03']").change(function () { $("#ch05_01_03").toggleClass("hide"); });
    $("input[name='YesNo5_01_05']").change(function () { $("#ch05_01_05").toggleClass("hide"); showAndhideDiv("ch05_01_05"); });
    $("input[name='ch05_01_05_01']").blur(function () { IsEmpty("ch05_01_05_01"); });
    $("input[name='ch05_01_05_02']").blur(function () { IsEmpty("ch05_01_05_02"); });
    $("input[name='ch05_01_05_03']").blur(function () { IsEmpty("ch05_01_05_03"); });
    $("input[name='ch05_01_05_04']").blur(function () { IsEmpty("ch05_01_05_04"); });
    $("input[name='ch05_01_05_05']").blur(function () { IsEmpty("ch05_01_05_05"); });
    $("input[name='YesNo5_01_06']").change(function () { $("#ch05_01_06").toggleClass("hide"); });
    $("input[name='YesNo5_03']").change(function () { $("#ch05_03").toggleClass("hide"); showAndhideDiv("ch05_03"); });
    $("input[name='ch05_03_01']").blur(function () { IsEmpty("ch05_03_01"); });
    $("input[name='ch05_03_02']").blur(function () { IsEmpty("ch05_03_02"); });
    $("input[name='ch05_03_03']").blur(function () { IsEmpty("ch05_03_03"); });
    $("input[name='ch05_03_04']").blur(function () { IsEmpty("ch05_03_04"); });
    $("input[name='ch05_03_05']").blur(function () { IsEmpty("ch05_03_05"); });
    $("input[name='ch05_03_06']").blur(function () { IsEmpty("ch05_03_06"); });
    $("input[name='ch05_03_07']").blur(function () { IsEmpty("ch05_03_07"); });
    $("input[name='ch05_03_08']").blur(function () { IsEmpty("ch05_03_08"); });
    $("input[name='ch05_03_09']").blur(function () { IsEmpty("ch05_03_09"); });
    $("input[name='YesNo5_04']").change(function () { $("#ch05_04").toggleClass("hide"); });
    $("input[name='ch05_05_01']").click(function () { $("#ch05_05_01").toggleClass("hide"); });
    $("input[name='ch05_05_02']").click(function () { $("#ch05_05_02").toggleClass("hide"); });
    $("input[name='ch05_05_03']").click(function () { $("#ch05_05_03").toggleClass("hide"); showAndhideDiv("ch05_05_03"); });
    $("input[name='ch05_05_03_01']").blur(function () { IsEmpty("ch05_05_03_01"); });
    $("input[name='ch05_05_03_02']").blur(function () { IsEmpty("ch05_05_03_02"); });
    $("input[name='ch05_05_03_03']").blur(function () { IsEmpty("ch05_05_03_03"); });
    $("input[name='ch05_05_03_04']").blur(function () { IsEmpty("ch05_05_03_04"); });
    $("input[name='ch05_05_03_05']").blur(function () { IsEmpty("ch05_05_03_05"); });
    $("input[name='ch05_05_03_06']").blur(function () { IsEmpty("ch05_05_03_06"); });
    $("input[name='ch05_05_03_07']").blur(function () { IsEmpty("ch05_05_03_07"); });
    $("input[name='ch05_05_03_08']").blur(function () { IsEmpty("ch05_05_03_08"); });
    $("input[name='ch05_05_03_09']").blur(function () { IsEmpty("ch05_05_03_09"); });
    $("input[name='YesNo5_06']").change(function () { $("#ch05_06").toggleClass("hide"); showAndhideDiv("ch05_06"); });
    $("input[name='ch05_06_01']").blur(function () { IsEmpty("ch05_06_01"); });
    $("input[name='ch05_06_02']").blur(function () { IsEmpty("ch05_06_02"); });
    $("input[name='ch05_06_03']").blur(function () { IsEmpty("ch05_06_03"); });
    $("input[name='ch05_06_04']").blur(function () { IsEmpty("ch05_06_04"); });
    $("input[name='ch05_06_05']").blur(function () { IsEmpty("ch05_06_05"); });
    $("input[name='YesNo5_07']").change(function () { $("#ch05_07").toggleClass("hide"); cleanInputBox("ch05_07"); });

    // +++++++++++++++++++++ VI.six ++++++++++++++++++++++++
    $("img[id='img06']").click(function () { changeImgDiv("img06", "ch06"); });

    $("input[name='YesNo6_01']").change(function () { $("#ch06_01").toggleClass("hide"); cleanInput("ch06_01"); });
    $("input[name='ch06_01_01_01']").blur(function () { IsEmpty("ch06_01_01_01"); });
    $("input[name='ch06_01_02_01']").blur(function () { IsEmpty("ch06_01_02_01"); });
    $("input[name='ch06_01_03_01']").blur(function () { IsEmpty("ch06_01_03_01"); });
    $("input[name='ch06_01_04_01']").blur(function () { IsEmpty("ch06_01_04_01"); });
    $("input[name='ch06_01_05_01']").blur(function () { IsEmpty("ch06_01_05_01"); });

    // +++++++++++++++++++++ VII.seven ++++++++++++++++++++++++
    $("img[id='img07']").click(function () { changeImgDiv("img07", "ch07"); });

    $("input[name='YesNo7_01']").change(function () { $("#ch07_01").toggleClass("hide"); cleanInput("ch07_01"); });
    $("input[name='ch07_01_01']").blur(function () { IsEmpty("ch07_01_01"); });
    $("input[name='ch07_01_02']").blur(function () { IsEmpty("ch07_01_02"); });
    $("input[name='ch07_01_03']").blur(function () { IsEmpty("ch07_01_03"); });
    $("input[name='ch07_01_04']").blur(function () { IsEmpty("ch07_01_04"); });
    $("input[name='ch07_01_05']").blur(function () { IsEmpty("ch07_01_05"); });
    $("input[name='ch07_01_06']").blur(function () { IsEmpty("ch07_01_06"); });
    $("input[name='ch07_01_07']").blur(function () { IsEmpty("ch07_01_07"); });
    $("input[name='ch07_01_08']").blur(function () { IsEmpty("ch07_01_08"); });
    $("input[name='ch07_01_09']").blur(function () { IsEmpty("ch07_01_09"); });
    $("input[name='ch07_01_10']").blur(function () { IsEmpty("ch07_01_10"); });
    $("select[name='ch07_02']").change(function () { elementHideControl("ch07_02"); });

    // +++++++++++++++++++++ VIII.eight ++++++++++++++++++++++++
    $("img[id='img08']").click(function () { changeImgDiv("img08", "ch08"); });
    $("input[name='YesNo8_03']").change(function () { $("#ch08_03").toggleClass("hide"); });

    // +++++++++++++++++++++ IX.nine ++++++++++++++++++++++++
    $("img[id='img09']").click(function () { changeImgDiv("img09", "ch09"); });

    $("input[name='YesNo9_01']").change(function () { $("#ch09_01").toggleClass("hide"); cleanInputBox("ch09_01"); });
    $("input[name='ch09_01_01']").click(function () { $("#ch09_01_01").toggleClass("hide"); });
    $("input[name='ch09_01_02']").click(function () { $("#ch09_01_02").toggleClass("hide"); });
    $("input[name='ch09_01_03']").click(function () { $("#ch09_01_03").toggleClass("hide"); });
    $("input[name='ch09_01_04']").click(function () { $("#ch09_01_04").toggleClass("hide"); });
    $("input[name='ch09_01_05']").click(function () { $("#ch09_01_05").toggleClass("hide"); });
    $("input[name='YesNo9_02']").change(function () { $("#ch09_02").toggleClass("hide"); cleanInputBox("ch09_02"); });
    $("input[name='ch09_02_01']").click(function () { $("#ch09_02_01").toggleClass("hide"); });
    $("input[name='ch09_02_02']").click(function () { $("#ch09_02_02").toggleClass("hide"); });
    $("input[name='ch09_02_03']").click(function () { $("#ch09_02_03").toggleClass("hide"); });
    $("input[name='ch09_02_04']").click(function () { $("#ch09_02_04").toggleClass("hide"); });
    $("input[name='ch09_02_05']").click(function () { $("#ch09_02_05").toggleClass("hide"); });

    // +++++++++++++++++++++ X.ten ++++++++++++++++++++++++
    $("img[id='img10']").click(function () { changeImgDiv("img10", "ch10"); });

    $("input[name='YesNo10_01']").change(function () { $("#ch10_01").toggleClass("hide"); clearCheckDiv("ch10_01"); });
    $("input[name='YesNo10_01_01']").change(function () { $("#ch10_01_01").toggleClass("hide"); clearTextValueByID('ch10_01_01'); });
    $("input[name='YesNo10_01_02']").change(function () { $("#ch10_01_02").toggleClass("hide"); clearTextValueByID('ch10_01_02'); });
    $("input[name='YesNo10_01_03']").change(function () { $("#ch10_01_03").toggleClass("hide"); clearTextValueByID('ch10_01_03'); });
    $("input[name='YesNo10_01_04']").change(function () { $("#ch10_01_04").toggleClass("hide"); clearTextValueByID('ch10_01_04'); });
    $("input[name='YesNo10_01_05']").change(function () { $("#ch10_01_05").toggleClass("hide"); clearTextValueByID('ch10_01_05'); });
    $("input[name='YesNo10_01_06']").change(function () { $("#ch10_01_06").toggleClass("hide"); clearTextValueByID('ch10_01_06'); });
    $("input[name='YesNo10_01_06_01']").change(function () { $("#ch10_01_06_01").toggleClass("hide"); clearTextValueByID('ch10_01_06_01'); });
    $("input[name='YesNo10_01_06_02']").change(function () { $("#ch10_01_06_02").toggleClass("hide"); clearTextValueByID('ch10_01_06_02'); });
    $("input[name='YesNo10_01_06_03']").change(function () { $("#ch10_01_06_03").toggleClass("hide"); clearTextValueByID('ch10_01_06_03'); });
    $("input[name='YesNo10_01_06_04']").change(function () { $("#ch10_01_06_04").toggleClass("hide"); clearTextValueByID('ch10_01_06_04'); });

    // +++++++++++++++++++++ XI.eleven ++++++++++++++++++++++++
    $("img[id='img11']").click(function () { changeImgDiv("img11", "ch11"); });

    $("input[name='YesNo11_01']").change(function () { $("#ch11_01").toggleClass("hide"); });
    $("input[name='YesNo11_02']").change(function () { $("#ch11_02").toggleClass("hide"); });
    $("input[name='YesNo11_03']").change(function () { $("#ch11_03").toggleClass("hide"); });
    $("input[name='YesNo11_04']").change(function () { $("#ch11_04").toggleClass("hide"); cleanInputBox("ch11_04"); });
    $("input[name='YesNo11_05']").change(function () { $("#ch11_05").toggleClass("hide"); });
    $("input[name='YesNo11_06']").change(function () { $("#ch11_06").toggleClass("hide"); });
    $("input[name='YesNo11_07']").change(function () { $("#ch11_07").toggleClass("hide"); cleanInputBox("ch11_07"); });
    $("input[name='ch11_04_06']").click(function () { $("#ch11_04_06").toggleClass("hide"); clearTextValueByID('ch11_04_06') });
    $("input[name='ch11_07_03']").click(function () { $("#ch11_07_03").toggleClass("hide"); });
    $("input[name='YesNo11_08']").change(function () { $("#ch11_08").toggleClass("hide"); });
    $("input[name='YesNo11_09']").change(function () { $("#ch11_09").toggleClass("hide"); });
    $("input[name='YesNo11_10']").change(function () { $("#ch11_10").toggleClass("hide"); clearCheckDiv("ch11_10"); });
    $("input[name='YesNo11_10_01']").change(function () { $("#ch11_10_01").toggleClass("hide"); clearCheckDiv("ch11_10_01"); });
    $("input[name='YesNo11_10_01_02']").change(function () { $("#ch11_10_01_02").toggleClass("hide"); });
    $("input[name='YesNo11_10_01_03']").change(function () { $("#ch11_10_01_03").toggleClass("hide"); });
    $("input[name='YesNo11_10_02']").change(function () { $("#ch11_10_02").toggleClass("hide"); clearCheckDiv("ch11_10_02"); });
    $("input[name='YesNo11_10_02_02']").change(function () { $("#ch11_10_02_02").toggleClass("hide"); });
    $("input[name='YesNo11_10_02_03']").change(function () { $("#ch11_10_02_03").toggleClass("hide"); });
    $("input[name='YesNo11_10_03']").change(function () { $("#ch11_10_03").toggleClass("hide"); clearCheckDiv("ch11_10_03"); });
    $("input[name='YesNo11_10_03_02']").change(function () { $("#ch11_10_03_02").toggleClass("hide"); });
    $("input[name='YesNo11_10_03_03']").change(function () { $("#ch11_10_03_03").toggleClass("hide"); });
    $("input[name='YesNo11_10_04']").change(function () { $("#ch11_10_04").toggleClass("hide"); clearCheckDiv("ch11_10_04"); });
    $("input[name='YesNo11_10_04_02']").change(function () { $("#ch11_10_04_02").toggleClass("hide"); });
    $("input[name='YesNo11_10_04_03']").change(function () { $("#ch11_10_04_03").toggleClass("hide"); });


    // +++++++++++++++++++++ XII.twelve ++++++++++++++++++++++++
    $("img[id='img12']").click(function () { changeImgDiv("img12", "ch12"); });

    $("input[name='YesNo12_02']").change(function () { $("#ch12_02").toggleClass("hide"); });
    $("input[name='YesNo12_03']").change(function () { $("#ch12_03").toggleClass("hide"); });
    $("input[name='ch12_09_08']").click(function () { $("#ch12_09_08").toggleClass("hide"); clearTextValueByID('ch12_09_08'); });

    // +++++++++++++++++++++ XIII.thirteen ++++++++++++++++++++++++
    $("img[id='img13']").click(function () { changeImgDiv("img13", "ch13"); });

    $("input[name='YesNo13_01']").change(function () { $("#ch13_01").toggleClass("hide"); clearCheckDiv("ch13_01"); });
    $("input[name='YesNo13_01_01']").change(function () { $("#ch13_01_01").toggleClass("hide"); });
    $("input[name='YesNo13_01_02']").change(function () { $("#ch13_01_02").toggleClass("hide"); });
    $("input[name='YesNo13_01_04']").change(function () { $("#ch13_01_04").toggleClass("hide"); });

    // +++++++++++++++++++++ XIV.fourteen ++++++++++++++++++++++++
    $("img[id='img14']").click(function () { changeImgDiv("img14", "ch14"); });

    $("input[name='YesNo14_01']").change(function () { $("#ch14_01").toggleClass("hide"); });
    $("select[name='ch14_01_01']").change(function () { elementHideControl("ch14_01_01"); });

    // +++++++++++++++++++++ XV.fifteen ++++++++++++++++++++++++
    $("img[id='img15']").click(function () { changeImgDiv("img15", "ch15"); });

    // +++++++++++++++++++++ XVI.sixteen ++++++++++++++++++++++++
    $("img[id='img16']").click(function () { changeImgDiv("img16", "ch16"); });

    $("input[name='YesNo16_01']").change(function () { $("#ch16_01").toggleClass("hide"); clearCheckDiv("ch16_01"); });
    $("input[name='YesNo16_01_03']").change(function () { $("#ch16_01_03").toggleClass("hide"); });
    $("input[name='YesNo16_01_04']").change(function () { $("#ch16_01_04").toggleClass("hide"); });

    // +++++++++++++++++++++ XVII.seventeen ++++++++++++++++++++++++
    $("img[id='img17']").click(function () { changeImgDiv("img17", "ch17"); });

    $("input[name='YesNo17_01']").change(function () { $("#ch17_01").toggleClass("hide"); clearCheckDiv("ch17_01"); });
    $("input[name='YesNo17_01_02']").change(function () { $("#ch17_01_02").toggleClass("hide"); });

    // +++++++++++++++++++++ XVIII.eighth ++++++++++++++++++++++++
    $("img[id='img18']").click(function () { changeImgDiv("img18", "ch18"); });

    $("input[name='YesNo18_01']").change(function () { $("#ch18_01").toggleClass("hide"); clearCheckDiv("ch18_01"); });

    // +++++++++++++++++++++ XIV.nineteenth ++++++++++++++++++++++++
    $("img[id='img19']").click(function () { changeImgDiv("img19", "ch19"); });

    $("input[name='ch19_01_10']").click(function () { $("#ch19_01_10").toggleClass("hide"); clearTextValueByID('ch19_01_10') });
    $("input[name='ch19_02_10']").click(function () { $("#ch19_02_10").toggleClass("hide"); clearTextValueByID('ch19_02_10') });
    $("input[name='ch19_03_09']").click(function () { $("#ch19_03_09").toggleClass("hide"); clearTextValueByID('ch19_03_09') });
    $("input[name='ch19_04_06']").click(function () { $("#ch19_04_06").toggleClass("hide"); clearTextValueByID('ch19_04_06') });
    $("input[name='ch19_05_09']").click(function () { $("#ch19_05_09").toggleClass("hide"); clearTextValueByID('ch19_05_09') });
    $("input[name='ch19_06_07']").click(function () { $("#ch19_06_07").toggleClass("hide"); clearTextValueByID('ch19_06_07') });
    $("input[name='ch19_07_09']").click(function () { $("#ch19_07_09").toggleClass("hide"); clearTextValueByID('ch19_07_09') });
    $("input[name='ch19_08_13']").click(function () { $("#ch19_08_13").toggleClass("hide"); clearTextValueByID('ch19_08_13') });
    $("input[name='ch19_09_05']").click(function () { $("#ch19_09_05").toggleClass("hide"); clearTextValueByID('ch19_09_05') });
    $("input[name='ch19_11_07']").click(function () { $("#ch19_11_07").toggleClass("hide"); clearTextValueByID('ch19_11_07') });
    $("input[name='ch19_11_08']").click(function () { $("#ch19_11_08").toggleClass("hide"); clearTextValueByID('ch19_11_08') });
    $("input[name='ch19_12_05']").click(function () { $("#ch19_12_05").toggleClass("hide"); clearTextValueByID('ch19_12_05') });
    $("input[name='ch19_13_05']").click(function () { $("#ch19_13_05").toggleClass("hide"); clearTextValueByID('ch19_13_05') });
    $("input[name='ch19_14_06']").click(function () { $("#ch19_14_06").toggleClass("hide"); clearTextValueByID('ch19_14_06') });
    // +++++++++++++++++++++ XX.twenty ++++++++++++++++++++++++
    $("img[id='img20']").click(function () { changeImgDiv("img20", "ch20"); });

    $("input[name='ch20_17_01']").click(function () { $("#ch20_17_01").toggleClass("hide"); });
    $("input[name='ch20_17_02']").click(function () { $("#ch20_17_02").toggleClass("hide"); });
    $("input[name='ch20_17_03']").click(function () { $("#ch20_17_03").toggleClass("hide"); });
    $("input[name='ch20_17_04']").click(function () { $("#ch20_17_04").toggleClass("hide"); });
    $("input[name='ch20_17_05']").click(function () { $("#ch20_17_05").toggleClass("hide"); });
    $("input[name='ch20_17_06']").click(function () { $("#ch20_17_06").toggleClass("hide"); });
    $("input[name='ch20_17_07']").click(function () { $("#ch20_17_07").toggleClass("hide"); });
    $("input[name='ch20_17_08']").click(function () { $("#ch20_17_08").toggleClass("hide"); });
    $("input[name='ch20_17_09']").click(function () { $("#ch20_17_09").toggleClass("hide"); });

    // +++++++++++++++++++++ XXI.twenty one ++++++++++++++++++++++++
    $("img[id='img21']").click(function () { changeImgDiv("img21", "ch21"); });
    $("input[name='ch21_01_23']").click(function () { $("#ch21_01_23").toggleClass("hide"); });

    // +++++++++++++++++++++ XXII.twenty two ++++++++++++++++++++++++
    $("img[id='img22']").click(function () { changeImgDiv("img22", "ch22"); });
    $("input[name='ch22_01_11']").click(function () { $("#ch22_01_11").toggleClass("hide"); });
    $("input[name='ch22_02_13']").click(function () { $("#ch22_02_13").toggleClass("hide"); });

    // +++++++++++++++++++++ XXIII.twenty three ++++++++++++++++++++++++
    $("img[id='img23']").click(function () { changeImgDiv("img23", "ch23"); });
    $("input[name='ch23_01_07']").click(function () { $("#ch23_01_07").toggleClass("hide"); });

    // +++++++++++++++++++++ XXIV.twenty four ++++++++++++++++++++++++
    $("img[id='img24']").click(function () { changeImgDiv("img24", "ch24"); });
    $("input[name='ch24_01_03']").click(function () { $("#ch24_01_03").toggleClass("hide"); });
    $("select[name='ch24_02']").change(function () { elementHideControl("ch24_02"); });
    $("select[name='ch24_01_01']").change(function () { elementHideControl("ch24_01_01"); });
});

function clearTextValueByID(id) {
    if ($("#" + id).hasClass("hide")) {
        $("#" + id).find('input').val('');
    }
}


function cleanInput(id) {
    if ($("#" + id).hasClass("hide")) {
        $("#" + id).children(':text').each(function (n) {
            $(this).val('');
        }); // + " :children input[type='text']").val("");
        //$("#" + id + " :children").filter("div").children("div").addClass("hide");
        $("#" + id).children("div").children("div").addClass("hide");
    }
}

function cleanInputBox(id) {
    if ($("#" + id).hasClass("hide")) {
        $("#" + id).children(':checkbox').each(function (n) {
            $(this).attr('checked',false);
        });
        //$("#" + id + " :children input[type='checkbox']").attr("checked", '');
        $("#" + id).children("div").children("div").addClass("hide");
    }
}

function IsEmpty(id) {
    if ($.trim($("input[name=" + id + "]").val()).length != 0) {
        $("#" + id).removeClass("hide");
    } else {
        $("#" + id).addClass("hide");
    }

}

function openAndcloseDIV(id) {
    if ($("#" + id).hasClass("hide")) {
        $("#" + id).children(':checkbox').each(function (n) {
            $(this).attr('checked', false);
        }); // + " :children input[type='checkbox']").attr("checked", '');

        //$("#" + id + " :children").filter("div").children("div").addClass("hide");
        $('#' + id).children('div').children('div').addClass('hide');
    }
}

function openAndcloseDIV2(id) {
    if ($("#" + id).hasClass("hide")) {
        $("#" + id).children(':checkbox').each(function (n) {
            $(this).attr('checked', false);
        }); // + " :children input[type='checkbox']").attr("checked", '');
        //$("#" + id).filter("div").children("div").addClass("hide");
        $('#' + id).children('div').children('div').addClass('hide');
    }
}

function showAndhideDiv(id) {
    if ($("#" + id).hasClass("hide")) {
        //$("#" + id + " :children input[type='text']").val("");
        $("#" + id).children(':text').each(function (n) {
            $(this).val('');
        });
        //$("#" + id + " :children").filter("div").children("div").addClass("hide");
        $("#" + id).children("div").children("div").addClass("hide");
    }
}

function clearCheckSpan(id) {
    try {
        if ($("#" + id).hasClass("hide")) {
            $("#" + id).find(':radio[value=0]').each(function () {
                $(this).attr('checked', true);
            });
            $('#' + id).find(':text').each(function () {
                $(this).val('');
            });

            $("#" + id).find(".act").addClass("hide");
            //$("#" + id + " :children input[type='radio']").attr("checked", '0');
            //$("#" + id + " :children").filter(".act").addClass("hide");
            //$("#" + id + " :children").filter(".act").children("span").addClass("hide");
            //$("#" + id + " :children").filter(".act").children("span").children("span").addClass("hide");

            //		$("span").filter(".con_padding").addClass("hide");
            //		$("span").filter(".con_padding").children("span").addClass("hide");
            //		$("span").filter(".con_padding").children("span").children("span").addClass("hide");
        }
    } catch (err) {
    alert(err);
    }
}

function clearCheckDiv(id) {
    if ($("#" + id).hasClass("hide")) {
        //$("#" + id + " :children input[type='radio']").attr("checked", '0');
        $('#' + id).children(':radio[value=0]').each(function () {
            $(this).attr('checked', true);
        });
        //$("#" + id + " :children").filter("div").children("div[class]").addClass("hide");
        $('#' + id).children('div').children('div[class]').addClass('hide');
    }
}

function clearDiv(id) {
    if ($("#" + id).hasClass("hide")) {
        $("#" + id + " input[type='radio']").attr("checked", '0');
        $("#" + id).filter("div").children("div[class]").addClass("hide");
        $("#" + id).filter("div").children("div[class]").children("div[class]").addClass("hide");
    }
}

function changeImgDiv(imgid, id) {
    $("#" + id).toggleClass("hide");
    if ($("#" + id).hasClass("hide")) {
        $("#" + imgid).attr("src", "../../Content/images/tree/tree_plus.gif");
    } else {
        $("#" + imgid).attr("src", "../../Content/images/tree/tree_less.gif");
    }
}

function elementHideControl(id) {
    if ($("#" + id).val() == "Other") {
        $("#" + id + "_hide").removeClass("hide");
    } else {
        $("#" + id + "_hide").addClass("hide");
    }
}


function checkForm() {
    var Reg = new RegExp("[^a-zA-Z0-9\_\u4e00-\u9fa5]", "i"); 
    var GRID = $.trim($("#GRID").val());
    var first_name = $.trim($("#FirstName").val());

    var last_name = $.trim($("#LastName").val());
    var birth_day = $.trim($("#BirthDay").val());
    var age = $.trim($("#Age").val());
    if (GRID.length == 0) {
        alert("The GRID fields cannot be empty!");
        $("#GRID").focus();
        return false;
    }
    if (first_name.length == 0) {
        alert("The FirstName fields cannot be empty!");
        $("#FirstName").focus();
        return false;
    }
    if (last_name.length == 0) {
        alert("The LastName fields cannot be empty!");
        $("#LastName").focus();
        return false;
    }
    if (birth_day.length == 0) {
        alert("The Birth Day fields cannot be empty!");
        $("#BirthDay").focus();
        return false;
    }
    if (age.length == 0) {
        alert("The Age fields cannot be empty!");
        $("#Age").focus();
        return false;
    }
    if (Reg.test(GRID) == true) {
        alert("Input invalid characters!");
        $("#GRID").focus();
        return false;
    }
    document.myForm.submit();
    $("input[type='submit']").attr("disabled", "disabled");

}
