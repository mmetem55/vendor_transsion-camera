.class public Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;
.super Ljava/lang/Object;
.source "PhysicalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsDelayForCapture:Z

.field private mIsSideFingerPrint:Z

.field private mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

.field private mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

.field private mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

.field private mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

.field private mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

.field private mVolumeKeyCode:I

.field private mVolumeKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "PhysicalKeyManager"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    const/4 v0, -0x1

    .line 44
    iput v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 172
    new-instance v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$1;-><init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    .line 49
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    .line 51
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventCallBack:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;

    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;-><init>(Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector$IKeyEventCallback;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    .line 52
    new-instance p1, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;-><init>(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)V

    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-string p1, "ro.side_fingerprint_support"

    const-string p2, "0"

    .line 53
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "1"

    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsSideFingerPrint:Z

    return-void
.end method

.method static synthetic access$000()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;)Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    return-object p0
.end method

.method private doFingerPrintAction()V
    .locals 3

    .line 145
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    .line 149
    iget-object v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 150
    iget-boolean v1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsSideFingerPrint:Z

    if-eqz v1, :cond_1

    .line 151
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method private isNeedFingerprint()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mSettingProvide:Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;

    if-eqz v0, :cond_0

    const-string v1, "key_fingerprint_capture"

    .line 159
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;->findISettingByKey(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 164
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_take_photo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private resetFingerPrintStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mIsDelayForCapture:Z

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mUIHandler:Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager$UIHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isPhysicalKeyEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_5

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_6

    const/16 v0, 0x55

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x162

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    return v0

    .line 78
    :pswitch_0
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x18

    .line 81
    iput v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 82
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 84
    :pswitch_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v2}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x19

    if-ne p1, v0, :cond_6

    .line 88
    iput v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 89
    iput-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    goto :goto_1

    .line 70
    :cond_3
    sget-object p1, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mVolumeKeyCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isNeedFingerprint()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->doFingerPrintAction()V

    goto :goto_0

    .line 73
    :cond_4
    iget p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    .line 74
    iget-object p2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {p2, p1, p0}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    :cond_5
    :goto_0
    return v1

    .line 95
    :cond_6
    :goto_1
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyDown(ILandroid/view/KeyEvent;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->isPhysicalKeyEnable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_5

    const/16 v0, 0x42

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_5

    const/16 v0, 0x55

    if-eq p1, v0, :cond_5

    const/16 v0, 0x8d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x12a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x162

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return v3

    .line 119
    :pswitch_0
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 122
    :cond_1
    iput v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 123
    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    .line 125
    :pswitch_1
    iget-object v4, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    invoke-interface {v4}, Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;->getVolumeIntercept()Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    .line 128
    :cond_2
    iput v2, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyCode:I

    .line 129
    iput-object v0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mVolumeKeyEvent:Landroid/view/KeyEvent;

    goto :goto_0

    .line 114
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->isNeedFingerprint()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 115
    invoke-direct {p0}, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->resetFingerPrintStatus()V

    :cond_4
    return v1

    .line 134
    :cond_5
    :goto_0
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mKeyEventDetector:Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/common/physicalkey/KeyEventDetector;->keyUp(ILandroid/view/KeyEvent;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/transsion/camera/app/common/physicalkey/PhysicalKeyManager;->mPhysicalKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$PhysicalKeyEventCallback;

    return-void
.end method
