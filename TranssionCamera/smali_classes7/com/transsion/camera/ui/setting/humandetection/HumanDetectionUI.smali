.class public Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "HumanDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;,
        Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_HUMAN:I = 0x6e

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveHumanView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

.field private mIsCapturing:Z

.field private mIsHumanViewShowing:Z

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 56
    new-instance p1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    const/4 p1, 0x1

    .line 59
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    .line 62
    new-instance p1, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    invoke-direct {p1, p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    return-void
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$500()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 47
    sget-object v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->doUpdateHumanView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;I)V

    return-void
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    return p1
.end method

.method private doUpdateHumanView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;I)V
    .locals 2

    .line 188
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mActiveHumanView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 194
    invoke-static {p1, v0, v1}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->show(Landroid/graphics/Rect;I)V

    const/4 p1, 0x1

    .line 197
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    :cond_1
    return-void

    .line 189
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    .line 190
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    return-void
.end method

.method private notifyEyeViewState(Z)V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsHumanViewShowing:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 139
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsHumanViewShowing:Z

    if-eqz p1, :cond_1

    const-string p0, "show_human_view"

    goto :goto_1

    :cond_1
    const-string p0, "hide_human_view"

    :goto_1
    const-string p1, "key_human_view_state"

    .line 141
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 128
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 131
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c00c6

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f09020c

    .line 68
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 69
    new-instance v0, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    invoke-direct {v0, p2}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;-><init>(Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    return-object p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_human_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    const/4 v0, 0x0

    .line 162
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 1

    const/16 v0, 0xd

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    goto :goto_1

    :cond_0
    const/16 v0, 0xe

    if-eq v0, p1, :cond_2

    const/16 v0, 0x9

    if-eq v0, p1, :cond_2

    const/16 v0, 0x63

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1b

    if-ne v0, p1, :cond_3

    .line 154
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->hideEntryView()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mIsCapturing:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 108
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 110
    sget-object p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$HumanResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI$1;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->setSettingDataCallback(Lcom/transsion/camera/app/common/setting/ISetting$ISettingDataCallback;)V

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

    .line 118
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 120
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 169
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mHumanFocusView:Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanFocusView;->hide()V

    const/4 v0, 0x0

    .line 171
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->notifyEyeViewState(Z)V

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_focus_state"

    .line 174
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 84
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/humandetection/HumanDetectionUI;->updateRootLayoutRect()V

    return-void
.end method
