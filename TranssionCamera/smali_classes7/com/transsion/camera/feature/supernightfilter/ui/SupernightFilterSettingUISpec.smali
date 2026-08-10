.class public Lcom/transsion/camera/feature/supernightfilter/ui/SupernightFilterSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "SupernightFilterSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_supernight_filter"

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 36
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_setting_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    .line 46
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 41
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$array;->super_night_filter_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    .line 31
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$id;->setting_ui_item_supernight_filter:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 26
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$drawable;->ic_supernight_filter:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 21
    sget p0, Lcom/transsion/camera/feature/supernightfilter/R$string;->supernight_filter_orighin:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldHighLightShow(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
