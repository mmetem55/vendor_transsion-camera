.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoMakeUpOptionUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;
.source "VideoMakeUpOptionUISpec.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_video_makeup"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_video_makeup"

    .line 30
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ListSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntries(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 50
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_makeup_setting_entries:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    .line 60
    invoke-static {}, Lcom/transsion/camera/utils/AreaUtil;->isSouthAsia()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 61
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_makeup_setting_entry_drawables_south_asia:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    goto :goto_0

    .line 62
    :cond_0
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_makeup_setting_entry_drawables_universal:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method protected initEntryValues(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    .line 55
    sget p0, Lcom/transsion/camera/feature/makeup/R$array;->video_makeup_setting_entry_values:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initEntryViewId()I
    .locals 0

    .line 45
    sget p0, Lcom/transsion/camera/feature/makeup/R$id;->setting_ui_item_video_makeup:I

    return p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 40
    sget p0, Lcom/transsion/camera/feature/makeup/R$drawable;->cw_makeup_video:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 35
    sget p0, Lcom/transsion/camera/feature/makeup/R$string;->guide_makeup_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldHighLightShow(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "on"

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldUpdateTint(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "off"

    .line 72
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
