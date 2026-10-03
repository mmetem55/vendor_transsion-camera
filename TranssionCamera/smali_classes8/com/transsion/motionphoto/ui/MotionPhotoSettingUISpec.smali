.class public Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;
.super Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;
.source "MotionPhotoSettingUISpec.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_motion_photo"

.field private static final PKG:Ljava/lang/String; = "com.transsion.camera"

.field private static volatile sBootResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .registers 3

    .line 16
    const-string v0, "key_motion_photo"

    invoke-static {p1}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->stash(Landroid/content/res/Resources;)Landroid/content/res/Resources;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/app/ui/setting/spec/ToggleSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    .line 17
    return-void
.end method

.method private static id(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .line 25
    sget-object v0, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->sBootResources:Landroid/content/res/Resources;

    .line 26
    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_6
    const-string v1, "com.transsion.camera"

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static stash(Landroid/content/res/Resources;)Landroid/content/res/Resources;
    .registers 1

    .line 20
    sput-object p0, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->sBootResources:Landroid/content/res/Resources;

    .line 21
    return-object p0
.end method


# virtual methods
.method protected initEntryDrawables(Landroid/content/res/Resources;)Landroid/content/res/TypedArray;
    .registers 4

    .line 37
    const-string v0, "motion_photo_setting_entry_drawables"

    const-string v1, "array"

    invoke-static {v0, v1}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p1

    return-object p1
.end method

.method protected initEntryViewId()I
    .registers 3

    .line 32
    const-string v0, "setting_ui_item_motion_photo"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initIcon(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .line 42
    const-string v0, "ic_motion_photo_on"

    const-string v1, "drawable"

    invoke-static {v0, v1}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected initSummary(Landroid/content/res/Resources;)[Ljava/lang/String;
    .registers 2

    .line 47
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method

.method protected initTitle(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 5

    .line 52
    const-string v0, "motion_photo_setting_title"

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_13

    .line 53
    invoke-static {v0, v1}, Lcom/transsion/motionphoto/ui/MotionPhotoSettingUISpec;->id(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_15

    .line 54
    :cond_13
    const-string p1, "Hareketli Foto\u011fraf"

    .line 52
    :goto_15
    return-object p1
.end method
