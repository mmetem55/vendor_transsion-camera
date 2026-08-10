.class public Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "FaceDetectionUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;,
        Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;,
        Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;
    }
.end annotation


# static fields
.field private static final FACEVIEW_HIDE_TIME:I = 0x5dc

.field private static final KEY:Ljava/lang/String; = "key_face_detection"

.field private static final MSG_UPDATE_FACES:I = 0x64

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mActiveFaceView:Z

.field private mCanShowFaceView:Z

.field private mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field private mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

.field private volatile mIsCapturing:Z

.field private mIsFaceViewShowing:Z

.field private mNumOfFaces:I

.field private mPreviewViewRect:Landroid/graphics/Rect;

.field private mStartTime:J

.field private mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private final mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "FaceDetectionUI"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 p1, 0x0

    .line 57
    iput p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    .line 62
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$1;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    .line 66
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsFaceViewShowing:Z

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    .line 68
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    .line 71
    new-instance p1, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    invoke-direct {p1, p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$1;)V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    return-void
.end method

.method static synthetic access$200()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 51
    sget-object v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;[Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->doUpdateFaceView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    return-void
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    return p0
.end method

.method static synthetic access$702(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    return p1
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateGenderFactor()V

    return-void
.end method

.method private doUpdateFaceView([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V
    .locals 8

    .line 213
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    if-nez v0, :cond_0

    goto :goto_4

    :cond_0
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_6

    .line 218
    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_2

    .line 225
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 226
    iget v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    array-length v6, p1

    if-eq v0, v6, :cond_2

    .line 228
    iput-wide v4, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    .line 230
    :cond_2
    array-length v0, p1

    iput v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    .line 231
    iget-wide v6, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    sub-long/2addr v4, v6

    cmp-long v0, v4, v2

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    const-wide/16 v6, 0x5dc

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 235
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v3, p1, v1

    .line 236
    invoke-virtual {v3}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    .line 237
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 236
    invoke-static {v4, v5, v6}, Lcom/transsion/camera/utils/CoordinatesUtil;->referenceToViewSpace(Landroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v4

    .line 238
    invoke-virtual {v3, v4}, Lcom/transsion/camera/utils/SettingInfo$CameraFace;->setBounds(Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 240
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->setFaces([Lcom/transsion/camera/utils/SettingInfo$CameraFace;)V

    .line 241
    invoke-direct {p0, v2}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    goto :goto_3

    .line 243
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 244
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    goto :goto_3

    .line 220
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 221
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    .line 222
    iput v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    .line 223
    iput-wide v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    :goto_3
    return-void

    .line 214
    :cond_7
    :goto_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 215
    invoke-direct {p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->notifyFaceViewState(Z)V

    return-void
.end method

.method private notifyFaceViewState(Z)V
    .locals 2

    .line 280
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsFaceViewShowing:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 282
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsFaceViewShowing:Z

    if-eqz p1, :cond_1

    const-string p0, "show_face_view"

    goto :goto_1

    :cond_1
    const-string p0, "hide_face_view"

    :goto_1
    const-string p1, "key_face_view_state"

    .line 284
    invoke-virtual {v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private registerKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private unRegisterKeyToMonitor(Ljava/lang/String;)V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusChangeListener:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$StatusChangeListener;

    invoke-virtual {v0, p1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    return-void
.end method

.method private updateGenderFactor()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v0, :cond_0

    const-string v1, "key_ai_face_beauty_smart_detection"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_face_beauty"

    .line 320
    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ai"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->showGender(Z)V

    goto :goto_0

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->showGender(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRootLayoutRect()V
    .locals 5

    .line 203
    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->getEntryView()Landroid/view/View;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 205
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 206
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 207
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const v0, 0x7f0c0078

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f090188

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    iput-object p2, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

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

    const-string p0, "key_face_detection"

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public notifyCameraOperateAction(I)V
    .locals 4

    const/16 v0, 0x9

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    const/4 v2, 0x5

    if-eq v2, p1, :cond_1

    const/4 v2, 0x7

    if-eq v2, p1, :cond_1

    const/4 v2, 0x3

    if-eq v2, p1, :cond_1

    if-eq v1, p1, :cond_1

    const/16 v2, 0x14

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x1b

    if-ne v2, p1, :cond_2

    .line 262
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->hideEntryView()V

    goto :goto_1

    .line 259
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateRootLayoutRect()V

    .line 260
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mActiveFaceView:Z

    :cond_2
    :goto_1
    const/16 v2, 0xd

    const/4 v3, 0x0

    if-ne v2, p1, :cond_3

    .line 265
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    goto :goto_2

    :cond_3
    const/16 v1, 0xe

    if-eq v1, p1, :cond_4

    if-eq v0, p1, :cond_4

    const/16 v0, 0x63

    if-ne v0, p1, :cond_5

    .line 269
    :cond_4
    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mIsCapturing:Z

    :cond_5
    :goto_2
    const/16 v0, 0x12

    if-eq v0, p1, :cond_6

    const/16 v0, 0x1f

    if-ne v0, p1, :cond_7

    .line 273
    :cond_6
    iput v3, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mNumOfFaces:I

    const-wide/16 v0, 0x0

    .line 274
    iput-wide v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStartTime:J

    :cond_7
    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 2

    .line 169
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 171
    sget-object p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$FaceResultCallbackImpl;-><init>(Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$1;)V

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

    .line 179
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    const-string p1, "key_focus_state"

    .line 181
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_ai_face_beauty_smart_detection"

    .line 182
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    const-string p1, "key_face_beauty"

    .line 183
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->registerKeyToMonitor(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setupEntryView()V
    .locals 2

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mCanShowFaceView:Z

    .line 111
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 113
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateGenderFactor()V

    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .line 154
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mUIHandler:Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI$UIHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 156
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceView;->clearFaces()V

    .line 158
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mFaceView:Lcom/transsion/camera/ui/setting/facedetection/FaceView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    const-string v0, "key_focus_state"

    .line 161
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_ai_face_beauty_smart_detection"

    .line 162
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    const-string v0, "key_face_beauty"

    .line 163
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->unRegisterKeyToMonitor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->mPreviewViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 130
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/facedetection/FaceDetectionUI;->updateRootLayoutRect()V

    return-void
.end method
