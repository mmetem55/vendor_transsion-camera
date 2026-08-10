.class public Lcom/transsion/camera/ui/setting/editwatermark/EditWaterMarkSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;
.source "EditWaterMarkSettingUISpec.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    const-string v0, "key_edit_watermark"

    .line 26
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/EntranceSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const p0, 0x7f08057f

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    const p0, 0x7f10010d

    .line 31
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
