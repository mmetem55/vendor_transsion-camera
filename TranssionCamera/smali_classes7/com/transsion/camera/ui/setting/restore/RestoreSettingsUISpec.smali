.class public Lcom/transsion/camera/ui/setting/restore/RestoreSettingsUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;
.source "RestoreSettingsUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_restore_settings"

    .line 22
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/OneClickSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initDialogTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f100280

    .line 47
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f08080f

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initMessage(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected initPositiveText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f100281

    .line 42
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f100282

    .line 27
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
