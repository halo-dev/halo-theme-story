<#import "/common/macro/theme_option_marco.ftl" as option>
<@option.head />
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6 themeImg">
            <img src="/${themeDir}/screenshot.png" style="width: 100%;">
        </div>
        <div class="col-md-6 themeSetting">
            <div class="nav-tabs-custom">
                <ul class="nav nav-tabs">
                    <li class="active">
                        <a href="#general" data-toggle="tab">基本设置</a>
                    </li>
                    <li>
                        <a href="#about" data-toggle="tab">关于</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <!-- 社交资料 -->
                    <div class="tab-pane active" id="general">
                        <form method="post" class="form-horizontal" id="storyGeneralOptions">
                            <div class="box-body">
                                <div class="form-group">
                                    <label for="storyGeneralBackground" class="col-sm-4 control-label">首页背景图：</label>
                                    <div class="col-sm-8">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="storyGeneralBackground" name="story_general_background" value="${options.story_general_background?if_exists}" >
                                            <span class="input-group-btn">
                                                <button class="btn btn-default btn-flat" type="button" onclick="openAttach('storyGeneralBackground')">选择</button>
                                            </span>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="storyGeneralTitle" class="col-sm-4 control-label">首页标题：</label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="6" id="storyGeneralTitle" name="story_general_title" style="resize: none">${options.story_general_title?default('<span class="b">Y</span>
<span class="b">U</span>
<a href="/">
<span class="w">M</span>
</a>
<span class="b">O</span>
<span class="b">E</span>')}</textarea>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label for="storyGeneralLocale" class="col-sm-4 control-label">日期显示中/英文：</label>
                                    <div class="col-sm-8">
                                        <label class="radio-inline">
                                            <input type="radio" name="story_general_locale" id="storyGeneralLocale" value="en" ${((options.story_general_locale?default('en'))=='en')?string('checked','')}> 英文
                                        </label>
                                        <label class="radio-inline">
                                            <input type="radio" name="story_general_locale" id="storyGeneralLocale" value="zh" ${((options.story_general_locale?if_exists)=='zh')?string('checked','')}> 中文
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="box-footer">
                                <button type="button" class="btn btn-primary btn-sm pull-right" onclick="saveThemeOptions('storyGeneralOptions')">保存设置</button>
                            </div>
                        </form>
                    </div>
                    <!-- 关于该主题 -->
                    <div class="tab-pane" id="about">
                        <div class="box box-widget widget-user-2">
                            <div class="widget-user-header bg-blue">
                                <div class="widget-user-image">
                                    <img class="img-circle" src="https://avatars2.githubusercontent.com/u/9015538?s=460&v=4" alt="User Avatar">
                                </div>
                                <h3 class="widget-user-username">Trii Hsia</h3>
                                <h5 class="widget-user-desc">人生本是梦中精彩的绽放</h5>
                            </div>
                            <div class="box-footer no-padding">
                                <ul class="nav nav-stacked">
                                    <li><a target="_blank" href="https://yumoe.com/">作者主页</a></li>
                                    <li><a target="_blank" href="https://github.com/txperl/Story-for-Typecho">原主题地址</a></li>
                                </ul>
                            </div>
                            <#if hasUpdate>
                            <div class="box-footer">
                                <button type="button" class="btn btn-warning btn-sm pull-right" data-loading-text="更新中..." onclick="updateTheme('${themeDir}',this)">更新主题</button>
                            </div>
                            </#if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<@option.import_js />
