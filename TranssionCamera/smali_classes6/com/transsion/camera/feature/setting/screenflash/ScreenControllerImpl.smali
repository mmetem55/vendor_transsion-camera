.class Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;
.super Ljava/lang/Object;
.source "ScreenControllerImpl.java"

# interfaces
.implements Lcom/transsion/camera/feature/setting/screenflash/IScreenController;


# static fields
.field private static final SCREEN_TORCH_LEVEL_END:I = 0x0

.field private static final SCREEN_TORCH_LEVEL_PATH:Ljava/lang/String; = "/sys/class/screen_torch/screen_torch/screen_torch_level"

.field private static final SCREEN_TORCH_LEVEL_START:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mOriginScreenBrightnessMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getScreenBrightnessMode(Landroid/content/Context;)I
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 56
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "context is null"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 61
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "screen_brightness_mode"

    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenBrightnessMode exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 67
    :goto_0
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenBrightnessMode screenBrightnessMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method

.method private setScreenBrightnessMode(Landroid/content/Context;I)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    .line 74
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "context is null"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p2, "No permission to modify system settings"

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0

    .line 83
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "screen_brightness_mode"

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 86
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScreenBrightnessMode result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p0
.end method


# virtual methods
.method public onScreenFlashEnd(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/screen_torch/screen_torch/screen_torch_level"

    invoke-static {v1, v0}, Lcom/transsion/camera/utils/DriverNodeUtil;->setDriverNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->mOriginScreenBrightnessMode:I

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->setScreenBrightnessMode(Landroid/content/Context;I)Z

    .line 50
    :cond_0
    sget-object p1, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScreenFlashEnd mOriginScreenBrightnessMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->mOriginScreenBrightnessMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenFlashStart(Landroid/content/Context;)V
    .locals 3

    .line 37
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->getScreenBrightnessMode(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->mOriginScreenBrightnessMode:I

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenFlashStart mOriginScreenBrightnessMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->mOriginScreenBrightnessMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->mOriginScreenBrightnessMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/feature/setting/screenflash/ScreenControllerImpl;->setScreenBrightnessMode(Landroid/content/Context;I)Z

    :cond_0
    const/4 p0, 0x1

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "/sys/class/screen_torch/screen_torch/screen_torch_level"

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/DriverNodeUtil;->setDriverNodeValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
