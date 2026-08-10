.class public Lcom/transsion/camera/ui/setting/liveresult/LiveResultSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "LiveResultSettingUISpec.java"


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_live_result"

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .locals 0

    .line 42
    sget p0, Lcom/transsion/camera/feature/liveresult/R$array;->live_result_setting_entry_drawables:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 32
    sget p0, Lcom/transsion/camera/feature/liveresult/R$drawable;->ic_live_result:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 27
    sget p0, Lcom/transsion/camera/feature/liveresult/R$string;->live_result_title:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
