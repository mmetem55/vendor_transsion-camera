.class public Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "TouchCaptureUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "off"

.field private static final KEY:Ljava/lang/String; = "key_touch_capture"

.field private static final MSG_TOUCH_CAPTURE:I = 0x65

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurValue:Ljava/lang/String;

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private final mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "TouchCaptureUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 42
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 46
    new-instance p1, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    .line 52
    new-instance p1, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    invoke-direct {p1, p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    return-void
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 37
    sget-object v0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->doTouchCapture()V

    return-void
.end method

.method private calculateTouchCoordinate(FF)Z
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-ltz v3, :cond_3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_3

    iget p1, v2, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-ltz p1, :cond_3

    iget p1, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    goto :goto_0

    .line 180
    :cond_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result v0

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p0

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_3

    sub-int/2addr p1, p0

    int-to-float p0, p1

    cmpl-float p0, p2, p0

    if-ltz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1

    .line 170
    :cond_4
    :goto_1
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "onSingleTapUp return, mAppUIRect is null."

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method private doTouchCapture()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->triggerCapture()V

    :cond_0
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private triggerCapture()V
    .locals 1

    .line 155
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    .line 156
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;->triggerShutterClick(I)V

    :cond_0
    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method


# virtual methods
.method public doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_touch_capture"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    const-string p0, "off"

    return-object p0
.end method

.method public onLongPress(FF)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    .line 145
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onLongPress(FF)Z

    move-result p0

    return p0
.end method

.method public onSingleTapUp(FF)Z
    .locals 3

    .line 116
    iget v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mScreenFormType:I

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-ne v2, v0, :cond_0

    .line 117
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->doTouchCapture()V

    return v1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-ltz v2, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_3

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->calculateTouchCoordinate(FF)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 130
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_3

    .line 131
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mCurValue:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p2, "key_focus"

    .line 133
    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fixed"

    .line 132
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 134
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->doTouchCapture()V

    :cond_3
    :goto_0
    return v1
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 93
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 0

    return-void
.end method

.method public bridge synthetic setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->setExtraDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V

    return-void
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 108
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->registerKeyToMonitor(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_0
    sget-object p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mStatusMonitor is null! maybe flow is wrong!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setShutterControl(Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mShutterControl:Lcom/transsion/camera/app/common/IAppUIControl$IShutterControl;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mHandler:Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    const-string v0, "key_focus_state"

    .line 85
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/touchcapture/TouchCaptureUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
