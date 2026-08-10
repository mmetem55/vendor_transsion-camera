.class public abstract Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;
.super Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;
.source "AbstractZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;
    }
.end annotation


# static fields
.field protected static final DEFAULT_ZOOM_VALUE:I

.field private static final INIT_CLICK_STEP:I = 0x2

.field private static final KEY:Ljava/lang/String; = "key_camera_zoom"

.field private static final NORMAL_SWITCH_TELE:I = 0x3

.field private static final NORMAL_SWITCH_WIDE:I = 0x2

.field private static final NO_SWITCH:I = 0x0

.field private static final SAT_SWITCH_WIDE:I = 0x5

.field protected static final TELE_5X_ZOOM_MAX:I = 0x1770

.field protected static final TELE_SETTING_ITEM_ENTRY:Ljava/lang/String; = "com.transsion.camera.ui.setting.zoom.TeleZoomSettingUIEntry"

.field private static final TELE_SWITCH_NORMAL:I = 0x4

.field private static final WIDE_SWITCH_NORMAL:I = 0x1

.field private static final WIDE_SWITCH_SAT:I = 0x6

.field private static final ZOOM_STEP_SHOW_ON_UI:I = 0xa


# instance fields
.field private final ZOOM_IN:I

.field private final ZOOM_INIT_DIRECT:I

.field private final ZOOM_OUT:I

.field private isCameraSwitching:Z

.field protected m2XBlurCameraId:Ljava/lang/String;

.field protected mActionZoomWheelBegin:Z

.field protected mBackHighCameraId:Ljava/lang/String;

.field protected mBottomPadding:I

.field private mCameraChangeDuringScale:Z

.field protected mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

.field protected final mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

.field protected mCurrentCameraId:Ljava/lang/String;

.field protected mCurrentValue:I

.field protected mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

.field protected mFrontHighCameraId:Ljava/lang/String;

.field protected mFrontWideCameraId:Ljava/lang/String;

.field private final mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

.field private mInEditWaterMarkFragment:Z

.field private mInFragment:Z

.field private mInMicroPanTilt:Z

.field private mInOrderEditorFragment:Z

.field private mInRemoteCaptureFragment:Z

.field private mIsCameraSwitchByLongKey:Z

.field protected mIsCapturing:Z

.field private mIsFilterSwitch:Z

.field protected mIsInAsdMode:Z

.field protected mIsInDUalVideoMode:Z

.field protected mIsInDocumentMode:Z

.field protected mIsInFunVideoMode:Z

.field protected mIsInMacroMode:Z

.field protected mIsInMovieMode:Z

.field protected mIsInProfessionMode:Z

.field protected mIsInSlowMotionMode:Z

.field protected mIsInSuperMoonMode:Z

.field protected mIsInTimeLapseVideoMode:Z

.field protected mIsInVideoMode:Z

.field protected mIsLongTouchToNormal:Z

.field private mIsMacroSupportZoom:Z

.field protected mIsModeOrCameraSwitching:Z

.field protected mIsSizeChanging:Z

.field protected mIsSlowMotionCameraAssigned:Z

.field protected mIsSupported:Z

.field protected mIsVideoStartRecording:Z

.field private mIsWideCamUISupport:Z

.field protected mIsZoomUIHidedWhileScaling:Z

.field protected mLastCurrentValue:I

.field protected mMacroCameraId:Ljava/lang/String;

.field protected mMaxValue:I

.field protected mMinValue:I

.field private mMinimizeZoomStep:Z

.field private mModeDisableTouchZoom:Z

.field protected mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

.field protected mModeSupportFrontWide:Z

.field protected mModeSupportSat:Z

.field protected mModeSupportTele:Z

.field protected mModeSupportWide:Z

.field private mNormalZoomMinValue:I

.field protected mNumOfWideCameraItem:I

.field protected mOffsetPadding:I

.field protected mOutofBound:Z

.field private mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

.field protected mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewStarted:Z

.field protected mPreviousCameraId:Ljava/lang/String;

.field protected mPreviousValue:I

.field private mRatio:F

.field private mRecordStopZoom:Z

.field protected mResources:Landroid/content/res/Resources;

.field protected mSatCameraId:Ljava/lang/String;

.field private mSatReplaceWide:Z

.field protected mSatSupportWide:Z

.field private mScaleFactor:F

.field private mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

.field private mSlowScale:Z

.field protected mSmoothZoomNeed:Z

.field private mStartScaleZoomValue:F

.field private mStartSpan:F

.field private mStartZoomValue:I

.field private mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

.field protected mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

.field private mStepCount:I

.field protected mSupportedValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field protected mTeleCameraId:Ljava/lang/String;

.field private mThreshholdValue:I

.field protected mTopPadding:I

.field private final mValueLongFocusScrollToMain:I

.field private final mValueLongFocusToMain:I

.field private final mValueNormalToLongFocus:I

.field private mValueSatReplacedToMain:I

.field private mValueWideToMain:I

.field protected mVideoCameraId:Ljava/lang/String;

.field private mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

.field protected mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

.field protected mWideCameraId:Ljava/lang/String;

.field private mWideCameraZoomList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomDirect:I

.field private mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

.field protected mZoomStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "100"

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6

    .line 184
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    .line 79
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    .line 80
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    .line 81
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    .line 82
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    .line 83
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    .line 84
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    const/4 v1, 0x1

    .line 85
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    .line 86
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    .line 87
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    .line 88
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    .line 89
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    .line 90
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    .line 91
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDUalVideoMode:Z

    .line 92
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    .line 93
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mActionZoomWheelBegin:Z

    .line 95
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInProfessionMode:Z

    .line 107
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    .line 108
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    .line 109
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    .line 111
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    .line 117
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    .line 118
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    .line 119
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    .line 120
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    .line 121
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 122
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 123
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    .line 124
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 125
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsLongTouchToNormal:Z

    .line 126
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCameraSwitchByLongKey:Z

    .line 127
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 128
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    .line 129
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    .line 131
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    .line 133
    new-instance v2, Lcom/transsion/camera/app/common/ui/HintInfo;

    const/16 v3, 0x67

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/ui/HintInfo;-><init>(II)V

    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v2, 0x0

    .line 134
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 138
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    .line 139
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 140
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 141
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    .line 142
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 143
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBackHighCameraId:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontHighCameraId:Ljava/lang/String;

    const/16 v3, 0x64

    .line 146
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    const/4 v3, -0x1

    .line 148
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ZOOM_IN:I

    .line 149
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ZOOM_OUT:I

    .line 150
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ZOOM_INIT_DIRECT:I

    .line 151
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    .line 152
    sget v4, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    .line 153
    new-instance v5, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;

    invoke-direct {v5, p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$MyStatusChangeListener;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;)V

    iput-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    .line 154
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    .line 155
    iput-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    .line 161
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousValue:I

    .line 162
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    const-string v2, "100"

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 165
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    .line 166
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    .line 168
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    .line 170
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    .line 173
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    .line 177
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    .line 180
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 182
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 668
    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    .line 669
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    .line 670
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    .line 793
    new-instance v3, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;

    invoke-direct {v3, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI$1;-><init>(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    .line 185
    new-instance v3, Lcom/transsion/camera/utils/debug/Log$Tag;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const v3, 0x7f050047

    .line 186
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    .line 187
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00a4

    .line 188
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const v3, 0x7f05008b

    .line 189
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    const v3, 0x7f050068

    .line 190
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinimizeZoomStep:Z

    const v3, 0x7f05009e

    .line 191
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSmoothZoomNeed:Z

    const v3, 0x7f05008a

    .line 192
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    const v3, 0x7f050098

    .line 193
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    const v3, 0x7f030142

    .line 194
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

    const v3, 0x7f030146

    .line 195
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f05005b

    .line 196
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsWideCamUISupport:Z

    .line 198
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 199
    array-length p1, v3

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v4, v3, v0

    .line 200
    iget-object v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueWideToMain:I

    .line 203
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 204
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueNormalToLongFocus:I

    add-int/lit8 p1, p1, -0xa

    .line 205
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusScrollToMain:I

    .line 206
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusToMain:I

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, -0xa

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueSatReplacedToMain:I

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinimizeZoomStep:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Ljava/lang/String;II)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCamera(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomLayoutUpdated()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I
    .locals 0

    .line 67
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStepCount:I

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;I)I
    .locals 0

    .line 67
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStepCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)I
    .locals 2

    .line 67
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStepCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStepCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCameraSwitchByLongKey:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;Z)Z
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCameraSwitchByLongKey:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    return p0
.end method

.method static synthetic access$500(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    return p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;)Z
    .locals 0

    .line 67
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    return p0
.end method

.method private currentCameraIsBase()Z
    .locals 1

    .line 1042
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private getTargetDeviceZoomValue(II)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 1008
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraDeviceZoom(I)I

    move-result p2

    .line 1010
    :cond_0
    invoke-virtual {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->seekprogressToZoomValue(I)I

    move-result p0

    .line 1011
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTargetZoomValue()F
    .locals 1

    .line 712
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    if-eqz v0, :cond_0

    .line 713
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    :goto_0
    mul-float/2addr v0, p0

    return v0

    .line 715
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    mul-float/2addr v0, v0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    goto :goto_0
.end method

.method private getTargetZoomValue(F)F
    .locals 1

    .line 720
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartSpan:F

    sub-float/2addr p1, v0

    .line 721
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    mul-float/2addr v0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    .line 722
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    add-float/2addr p0, v0

    return p0
.end method

.method private isZoomLayoutUpdated()Z
    .locals 2

    .line 252
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isZoomSupportForMacro()Z
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_macro"

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isZoomSupportForWide()Z
    .locals 5

    .line 356
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 357
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    const-string v3, "on"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "key_macro"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-eqz v0, :cond_4

    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v4, "wide_camera"

    invoke-interface {v0, v4}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 361
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSlowMotionCameraAssigned:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDUalVideoMode:Z

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1
.end method

.method private ratioToClosestValue(F)I
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1231
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    if-gt p1, v0, :cond_0

    return v0

    .line 1234
    :cond_0
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    if-lt p1, v0, :cond_1

    return v0

    .line 1237
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_2

    return v0

    .line 1242
    :cond_3
    sget p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    return p0
.end method

.method private resetStartScale(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    const/4 v0, 0x0

    .line 697
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 698
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    .line 699
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartSpan:F

    .line 700
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    int-to-float p1, p1

    mul-float/2addr p1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartScaleZoomValue:F

    .line 701
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 702
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    .line 703
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    const/high16 p1, 0x3f000000    # 0.5f

    .line 704
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    goto :goto_0

    .line 706
    :cond_2
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSlowScale:Z

    .line 707
    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRatio:F

    :goto_0
    return-void
.end method

.method private showSwitchCameraMsg(Ljava/lang/String;II)V
    .locals 4

    .line 1207
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateRejectSwitchCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_1

    move p3, v1

    goto :goto_0

    :cond_1
    move p3, v2

    :goto_0
    const-string v0, "0"

    .line 1211
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v3, "1"

    .line 1212
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 1213
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    if-eqz v1, :cond_5

    .line 1216
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne p2, p1, :cond_5

    iget p2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    if-eq p2, p1, :cond_5

    .line 1217
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f1003a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showHint(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private showTeleCameraMazZoom()Z
    .locals 2

    .line 1511
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v0, "0"

    .line 1512
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private stateMatchNormalToTele()Z
    .locals 2

    .line 1172
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueNormalToLongFocus:I

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private stateMatchNormalToWide()Z
    .locals 3

    .line 1085
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "1"

    .line 1087
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    if-ne v0, v2, :cond_0

    return v1

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v2, "0"

    .line 1095
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1096
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchSatToWide()Z
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 1107
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private stateMatchTeleToNormal()Z
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusToMain:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private stateRejectSwitchCamera()Z
    .locals 1

    .line 1203
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private switchCamera(Ljava/lang/String;II)Z
    .locals 0

    const/4 p1, 0x3

    const/4 p2, -0x1

    if-ne p3, p2, :cond_2

    .line 978
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraTypeWhenZoomIn()I

    move-result p2

    const/4 p3, 0x4

    if-ne p3, p2, :cond_0

    .line 980
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusScrollToMain:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateTeleCameraZoom(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    .line 982
    iget p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getTargetDeviceZoomValue(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateTeleCameraZoom(Ljava/lang/String;)V

    .line 984
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraBy(I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p2, 0x1

    if-ne p3, p2, :cond_4

    .line 986
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraTypeWhenZoomOut()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 988
    iget p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-direct {p0, p1, p3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getTargetDeviceZoomValue(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateTeleCameraZoom(Ljava/lang/String;)V

    .line 990
    :cond_3
    invoke-direct {p0, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraBy(I)Z

    move-result p0

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private switchCameraBy(I)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "key_zoom_limit_monitor"

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 1194
    :pswitch_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_disable_tele"

    .line 1195
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1190
    :pswitch_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_enable_tele"

    .line 1191
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1186
    :pswitch_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_enable_wide"

    .line 1187
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    .line 1181
    :pswitch_3
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    invoke-virtual {p0, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->getStatusResponder(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;

    move-result-object p0

    const-string p1, "value_zoom_disable_wide"

    .line 1182
    invoke-virtual {p0, v1, p1}, Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusResponder;->statusChanged(Ljava/lang/String;Ljava/lang/Object;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchCameraTypeWhenSeek(I)I
    .locals 2

    .line 1019
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1022
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_1

    .line 1023
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->zoomValueInTele(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsBase()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 1026
    :cond_1
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->zoomValueInBase(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsTele()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    return v1
.end method

.method private switchCameraTypeWhenZoomIn()I
    .locals 2

    .line 1069
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1072
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchNormalToWide()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x2

    return p0

    .line 1074
    :cond_1
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchSatToWide()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x5

    return p0

    .line 1076
    :cond_2
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchTeleToNormal()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 1078
    :cond_3
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchNormalToTele()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    return p0

    :cond_4
    return v1
.end method

.method private switchCameraTypeWhenZoomOut()I
    .locals 6

    .line 1126
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateRejectSwitchCamera()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1131
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x6

    if-eqz v0, :cond_6

    .line 1132
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v5, "wide_camera"

    invoke-interface {v0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "on"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1133
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-ne v0, v3, :cond_2

    .line 1134
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    if-ge v0, v3, :cond_2

    return v1

    .line 1138
    :cond_2
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    return v4

    :cond_3
    return v2

    .line 1143
    :cond_4
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v3, "key_macro"

    invoke-interface {v0, v3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1144
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    if-nez v0, :cond_9

    .line 1145
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v0, :cond_5

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    return v4

    :cond_5
    return v2

    .line 1152
    :cond_6
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1153
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-ne v0, v3, :cond_7

    .line 1154
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    if-ge v0, v3, :cond_7

    return v1

    .line 1158
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatSupportWide:Z

    if-nez v0, :cond_8

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    return v4

    :cond_8
    return v2

    .line 1165
    :cond_9
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->stateMatchNormalToTele()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x3

    return p0

    :cond_a
    return v1
.end method

.method private updateTeleCameraZoom(Ljava/lang/String;)V
    .locals 3

    .line 1015
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getDataStore()Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getStoreScope()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private updateZoomUI()V
    .locals 1

    .line 1371
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    .line 1373
    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 1374
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    const/4 v0, 0x1

    .line 1375
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    const/4 v0, 0x0

    .line 1376
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    :cond_0
    return-void
.end method

.method private valueToScaleRatio(I)F
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private zoomValueInBase(I)Z
    .locals 0

    .line 1038
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueLongFocusScrollToMain:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private zoomValueInTele(I)Z
    .locals 0

    .line 1034
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueNormalToLongFocus:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected calculateZoomPosByClick(ZIZ)I
    .locals 4

    .line 1299
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 1300
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1301
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    iget v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eqz p3, :cond_1

    .line 1302
    iget p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p3, :cond_1

    if-eqz p1, :cond_0

    add-int/2addr v2, p2

    goto :goto_0

    :cond_0
    sub-int/2addr v2, p2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 1303
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    .line 1308
    :cond_1
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinimizeZoomStep:Z

    if-eqz p0, :cond_2

    const/16 p0, 0x140

    goto :goto_1

    :cond_2
    const/16 p0, 0x40

    .line 1309
    :goto_1
    div-int/lit8 p3, p0, 0x2

    if-lt v0, p0, :cond_7

    if-ltz v2, :cond_3

    .line 1312
    div-int/lit8 p0, v0, 0x40

    if-ge v2, p0, :cond_3

    goto/16 :goto_5

    .line 1314
    :cond_3
    div-int/lit8 p0, v0, 0x40

    if-lt v2, p0, :cond_4

    div-int/lit8 p0, v0, 0x8

    if-ge v2, p0, :cond_4

    :goto_2
    mul-int/lit8 p2, p2, 0x2

    goto/16 :goto_5

    .line 1316
    :cond_4
    div-int/lit8 p0, v0, 0x8

    if-lt v2, p0, :cond_5

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_5

    :goto_3
    mul-int/lit8 p2, p2, 0x3

    goto :goto_5

    .line 1318
    :cond_5
    div-int/lit8 p0, v0, 0x4

    if-lt v2, p0, :cond_6

    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_6

    mul-int/lit8 p2, p2, 0x5

    goto :goto_5

    :cond_6
    mul-int/lit8 p2, p2, 0xa

    goto :goto_5

    :cond_7
    if-lt v0, p3, :cond_c

    if-ltz v2, :cond_8

    .line 1325
    div-int/lit8 p0, v0, 0x20

    if-ge v2, p0, :cond_8

    goto :goto_5

    .line 1327
    :cond_8
    div-int/lit8 p0, v0, 0x20

    if-lt v2, p0, :cond_9

    div-int/lit8 p0, v0, 0x8

    if-ge v2, p0, :cond_9

    goto :goto_2

    .line 1329
    :cond_9
    div-int/lit8 p0, v0, 0x8

    if-lt v2, p0, :cond_a

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_a

    goto :goto_3

    .line 1331
    :cond_a
    div-int/lit8 p0, v0, 0x4

    if-lt v2, p0, :cond_b

    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_b

    goto :goto_4

    :cond_b
    mul-int/lit8 p2, p2, 0x8

    goto :goto_5

    :cond_c
    if-ltz v2, :cond_d

    .line 1339
    div-int/lit8 p0, v0, 0xa

    if-ge v2, p0, :cond_d

    goto :goto_5

    .line 1341
    :cond_d
    div-int/lit8 p0, v0, 0xa

    if-lt v2, p0, :cond_e

    div-int/lit8 p0, v0, 0x4

    if-ge v2, p0, :cond_e

    goto :goto_2

    .line 1343
    :cond_e
    div-int/lit8 p0, v0, 0x4

    if-lt v2, p0, :cond_f

    div-int/lit8 p0, v0, 0x2

    if-ge v2, p0, :cond_f

    goto :goto_3

    :cond_f
    :goto_4
    mul-int/lit8 p2, p2, 0x4

    :goto_5
    if-eqz p1, :cond_10

    add-int/2addr v2, p2

    goto :goto_6

    :cond_10
    sub-int/2addr v2, p2

    :goto_6
    add-int/lit8 v0, v0, -0x1

    .line 1351
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_11
    return v1
.end method

.method protected calculateZoomPosByLongPress(ZI)I
    .locals 3

    .line 1360
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1362
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-eqz p1, :cond_0

    add-int/2addr p0, p2

    goto :goto_0

    :cond_0
    sub-int/2addr p0, p2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    .line 1363
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1
    return v1
.end method

.method protected correctZoomValue(I)I
    .locals 0

    .line 1554
    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsWideCamUISupport:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, -0x32

    :goto_0
    return p1
.end method

.method protected currentCameraFacingFront()Z
    .locals 0

    .line 1065
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsMacro()Z
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1061
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected currentCameraIsSat()Z
    .locals 1

    .line 1050
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1051
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected currentCameraIsTele()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method protected currentCameraIsWide()Z
    .locals 1

    .line 1055
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 1056
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 212
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method abstract doOrientationChanged(I)V
.end method

.method protected getDeviceZoomValue(I)I
    .locals 1

    .line 1516
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1517
    div-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method public bridge synthetic getExtraKey()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/ISettingUI;->getExtraKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getGraduationStyle()Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;
    .locals 9

    .line 1599
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1601
    :goto_0
    iget-boolean v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 1603
    :goto_1
    iget-object v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    .line 1604
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMaxZoom()I

    move-result v4

    int-to-float v4, v4

    .line 1605
    iget-boolean v5, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    .line 1607
    iget-object v6, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x190

    if-ne v6, v7, :cond_2

    move v6, v1

    goto :goto_2

    :cond_2
    move v6, v2

    .line 1608
    :goto_2
    iget-object v7, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-static {v7}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/16 v8, 0x320

    if-ne v7, v8, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v5, :cond_4

    .line 1613
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->SUPER_MOON:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto/16 :goto_a

    :cond_4
    const v2, 0x45bb8000    # 6000.0f

    if-eqz v0, :cond_d

    if-eqz v3, :cond_c

    cmpl-float v0, v4, v2

    if-nez v0, :cond_7

    .line 1617
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_5

    goto :goto_4

    .line 1624
    :cond_5
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto/16 :goto_a

    .line 1622
    :cond_6
    :goto_4
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto/16 :goto_a

    .line 1627
    :cond_7
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-eqz v0, :cond_8

    goto :goto_6

    .line 1629
    :cond_8
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    if-eqz v0, :cond_9

    goto :goto_5

    .line 1632
    :cond_9
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto/16 :goto_a

    .line 1630
    :cond_a
    :goto_5
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto/16 :goto_a

    .line 1628
    :cond_b
    :goto_6
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    .line 1636
    :cond_c
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_60_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    :cond_d
    if-eqz v3, :cond_15

    cmpl-float v0, v4, v2

    if-nez v0, :cond_10

    .line 1641
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-eqz v0, :cond_e

    goto :goto_7

    .line 1648
    :cond_e
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_6000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    .line 1646
    :cond_f
    :goto_7
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    .line 1651
    :cond_10
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMovieMode:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSlowMotionMode:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInFunVideoMode:Z

    if-eqz v0, :cond_11

    goto :goto_9

    .line 1655
    :cond_11
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInDocumentMode:Z

    if-eqz v0, :cond_12

    goto :goto_8

    .line 1658
    :cond_12
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_2000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    .line 1656
    :cond_13
    :goto_8
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    .line 1654
    :cond_14
    :goto_9
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1500:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    :cond_15
    if-eqz v6, :cond_16

    .line 1662
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_400:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    :cond_16
    if-eqz v1, :cond_17

    .line 1664
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_800:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    goto :goto_a

    .line 1666
    :cond_17
    sget-object v0, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->ZOOM_MIN_100_MAX_1000:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    .line 1670
    :goto_a
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGraduatedStyle style: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    const-string p0, "key_camera_zoom"

    return-object p0
.end method

.method protected getShowCurrentZoomValue(I)I
    .locals 1

    .line 1503
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method protected getShowMaxZoomValue(I)I
    .locals 1

    .line 1488
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    if-eqz v0, :cond_2

    .line 1489
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInVideoMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInTimeLapseVideoMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1494
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showTeleCameraMazZoom()Z

    move-result p0

    if-eqz p0, :cond_2

    mul-int/lit8 p1, p1, 0x2

    return p1

    .line 1490
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    mul-int/lit8 p1, p1, 0x2

    :cond_2
    return p1
.end method

.method protected getShowZoomValue(I)I
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    :cond_0
    return p1
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 392
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getZoomRatio(I)Ljava/lang/String;
    .locals 4

    .line 1524
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getZoomValue] zoomValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1525
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 1526
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isNeedReCalculateForMacro()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->correctZoomValue(I)I

    move-result p1

    goto :goto_0

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isNeedReCalculateForWide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 1532
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWIdeCameraItemTextCenterZoom:[Ljava/lang/String;

    aget-object p0, p0, v0

    return-object p0

    .line 1534
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1535
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p1

    goto :goto_0

    .line 1536
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1537
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->get2XBlurCameraZoom(I)I

    move-result p1

    .line 1540
    :cond_3
    :goto_0
    rem-int/lit8 p0, p1, 0x64

    const-string v0, "%dx"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_4

    .line 1541
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1543
    :cond_4
    rem-int/lit8 p0, p1, 0xa

    const/4 v3, 0x5

    if-ne p0, v3, :cond_5

    add-int/lit8 p1, p1, -0x5

    .line 1545
    rem-int/lit8 p0, p1, 0x64

    if-nez p0, :cond_5

    .line 1546
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x64

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p0, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1549
    :cond_5
    sget-object p0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    div-int/lit8 v3, p1, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    div-int/lit8 p1, p1, 0xa

    rem-int/lit8 p1, p1, 0xa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "%d.%dx"

    invoke-static {p0, p1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hideEntryView()V
    .locals 2

    const/4 v0, 0x0

    .line 446
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    .line 447
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 450
    :cond_0
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->hideEntryView()V

    return-void
.end method

.method abstract hideZoomUI()V
.end method

.method abstract hideZoomUI(II)V
.end method

.method abstract hideZoomWheel()V
.end method

.method protected isBoundaryPointToWideCam(Z)Z
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isIszZoomStatus(Ljava/lang/String;)Z
    .locals 1

    .line 1122
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isNeedReCalculateForMacro()Z
    .locals 2

    .line 1558
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 1560
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsMacro()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->currentCameraIsWide()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsMacroSupportZoom:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v0, "key_macro"

    .line 1561
    invoke-interface {p0, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "on"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method protected isNeedReCalculateForWide()Z
    .locals 2

    .line 1569
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method abstract loadEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyCameraOperateAction(I)V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCameraOperateAction: action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p1, :cond_14

    const/16 v1, 0x35

    const/4 v2, 0x0

    if-eq p1, v0, :cond_11

    const/4 v3, 0x2

    if-eq p1, v3, :cond_10

    const/4 v3, 0x3

    if-eq p1, v3, :cond_12

    const/4 v3, 0x4

    if-eq p1, v3, :cond_f

    const/4 v3, 0x5

    if-eq p1, v3, :cond_d

    const/4 v3, 0x6

    if-eq p1, v3, :cond_f

    const/4 v3, 0x7

    if-eq p1, v3, :cond_e

    const/16 v3, 0x2d

    if-eq p1, v3, :cond_c

    const/16 v3, 0x2e

    if-eq p1, v3, :cond_b

    const/16 v3, 0x34

    if-eq p1, v3, :cond_15

    if-eq p1, v1, :cond_12

    const/16 v3, 0x4d

    if-eq p1, v3, :cond_a

    const/16 v3, 0x4e

    if-eq p1, v3, :cond_9

    const/16 v3, 0x52

    if-eq p1, v3, :cond_8

    const/16 v3, 0x53

    if-eq p1, v3, :cond_7

    const/16 v3, 0x55

    if-eq p1, v3, :cond_6

    const/16 v3, 0x56

    if-eq p1, v3, :cond_5

    const/16 v3, 0x5a

    if-eq p1, v3, :cond_3

    const/16 v4, 0x5b

    if-eq p1, v4, :cond_2

    const/16 v4, 0x5d

    if-eq p1, v4, :cond_c

    const/16 v4, 0x5e

    if-eq p1, v4, :cond_b

    const/16 v4, 0x61

    if-eq p1, v4, :cond_1

    const/16 v4, 0x62

    if-eq p1, v4, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 589
    :pswitch_0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    goto/16 :goto_2

    .line 586
    :pswitch_1
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    goto/16 :goto_2

    .line 657
    :sswitch_0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    goto/16 :goto_2

    .line 654
    :sswitch_1
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    goto/16 :goto_2

    .line 650
    :sswitch_2
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    goto/16 :goto_2

    .line 502
    :sswitch_3
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    goto/16 :goto_2

    .line 499
    :sswitch_4
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    goto/16 :goto_2

    .line 592
    :sswitch_5
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    .line 593
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 594
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    .line 595
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    .line 596
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 597
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsFilterSwitch:Z

    .line 598
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 599
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    .line 600
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    .line 601
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInEditWaterMarkFragment:Z

    .line 602
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInRemoteCaptureFragment:Z

    .line 603
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    .line 604
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 605
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 606
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto/16 :goto_2

    .line 521
    :sswitch_6
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 522
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 523
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    .line 524
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding(Z)V

    goto/16 :goto_2

    .line 543
    :sswitch_7
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    const/4 p1, 0x0

    .line 544
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onUp(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 528
    :sswitch_8
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    goto/16 :goto_2

    .line 547
    :sswitch_9
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_2

    .line 548
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showZoomWheel()V

    goto :goto_0

    .line 518
    :sswitch_a
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto/16 :goto_2

    .line 639
    :sswitch_b
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewStarted:Z

    .line 640
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    goto/16 :goto_2

    .line 647
    :cond_0
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    goto/16 :goto_2

    .line 644
    :cond_1
    :sswitch_c
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInMicroPanTilt:Z

    goto/16 :goto_2

    .line 553
    :cond_2
    :goto_0
    :pswitch_2
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    goto/16 :goto_2

    .line 534
    :cond_3
    :pswitch_3
    :sswitch_d
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 535
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    if-ne p1, v3, :cond_4

    .line 537
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomWheel()V

    goto/16 :goto_2

    .line 539
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto/16 :goto_2

    .line 495
    :cond_5
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    goto/16 :goto_2

    .line 492
    :cond_6
    :sswitch_e
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInOrderEditorFragment:Z

    goto/16 :goto_2

    .line 572
    :cond_7
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 573
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 574
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 575
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    goto/16 :goto_2

    .line 556
    :cond_8
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 557
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 558
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 559
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/transsion/camera/utils/FeatureSupport;->isVersionTenOrHigher(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 560
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    goto :goto_2

    .line 488
    :cond_9
    :sswitch_f
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    goto :goto_2

    .line 484
    :cond_a
    :sswitch_10
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mInFragment:Z

    goto :goto_2

    .line 582
    :cond_b
    :sswitch_11
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 583
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto :goto_2

    .line 567
    :cond_c
    :sswitch_12
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    .line 568
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsZoomUIHidedWhileScaling:Z

    .line 569
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto :goto_2

    .line 510
    :cond_d
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInSuperMoonMode:Z

    if-eqz p1, :cond_e

    .line 511
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->showZoomWheel()V

    .line 514
    :cond_e
    :sswitch_13
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    goto :goto_2

    .line 506
    :cond_f
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSizeChanging:Z

    .line 507
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    goto :goto_2

    .line 609
    :cond_10
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 610
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    .line 611
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    .line 612
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    goto :goto_2

    .line 622
    :cond_11
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 626
    :cond_12
    :sswitch_14
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    if-eqz v0, :cond_13

    if-ne p1, v1, :cond_13

    goto :goto_1

    .line 629
    :cond_13
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 631
    :goto_1
    iput-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCameraSwitchByLongKey:Z

    .line 633
    invoke-virtual {p0, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setLayoutPadding(Z)V

    .line 634
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_16

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez p0, :cond_16

    .line 635
    sget-object p0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    goto :goto_2

    .line 615
    :cond_14
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    .line 616
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isCameraSwitching:Z

    .line 617
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 619
    :cond_15
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    :cond_16
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_13
        0x8 -> :sswitch_b
        0x9 -> :sswitch_14
        0xa -> :sswitch_a
        0xb -> :sswitch_d
        0xc -> :sswitch_9
        0xd -> :sswitch_8
        0xe -> :sswitch_7
        0xf -> :sswitch_12
        0x10 -> :sswitch_11
        0x11 -> :sswitch_10
        0x12 -> :sswitch_f
        0x13 -> :sswitch_a
        0x14 -> :sswitch_6
        0x1b -> :sswitch_5
        0x66 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_e
        0x6a -> :sswitch_10
        0x6b -> :sswitch_10
        0x6c -> :sswitch_c
        0x7b -> :sswitch_2
        0x89 -> :sswitch_1
        0x8a -> :sswitch_0
        0x8b -> :sswitch_1
        0x90 -> :sswitch_12
        0x91 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 0

    .line 441
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->doOrientationChanged(I)V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .line 727
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    const-string v1, " , mIsCapturing:"

    const-string v2, "onScale, mIsSupported: "

    const/4 v3, 0x0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 735
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 736
    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v4, 0x1

    if-lez v2, :cond_2

    .line 738
    iput v4, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    goto :goto_0

    :cond_2
    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    const/4 v0, -0x1

    .line 740
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    .line 742
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    if-eqz v0, :cond_4

    .line 743
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    return v4

    .line 746
    :cond_4
    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getTargetZoomValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->ratioToClosestValue(F)I

    move-result p1

    .line 748
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    invoke-direct {p0, v0, v1, v2}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCamera(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_5

    return v4

    .line 752
    :cond_5
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->valueToScaleRatio(I)F

    .line 753
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 759
    :cond_6
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 760
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    .line 764
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    if-eqz p1, :cond_7

    .line 765
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateZoomValueToUI()V

    .line 766
    invoke-virtual {p0, v4}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 767
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 768
    invoke-virtual {p0, v3}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    :cond_7
    return v4

    .line 732
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3

    .line 728
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v3
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleBegin mIsSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 675
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 678
    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    .line 680
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v1, :cond_1

    .line 681
    sget-object v1, Lcom/transsion/camera/app/common/IApp$State;->STATE_RUNNING:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 685
    sget v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_0

    .line 687
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 689
    :goto_0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->resetStartScale(Landroid/view/ScaleGestureDetector;)V

    .line 690
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    .line 691
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 p1, 0x17

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p0, 0x1

    return p0

    .line 676
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScaleEnd, mIsSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 779
    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOutofBound:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsModeOrCameraSwitching:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mRecordStopZoom:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeDisableTouchZoom:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsCapturing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsVideoStartRecording:Z

    if-nez v0, :cond_1

    .line 783
    sget-object v0, Lcom/transsion/camera/app/common/IApp$State;->STATE_IDLE:Lcom/transsion/camera/app/common/IApp$State;

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;->onStatusChanged(Lcom/transsion/camera/app/common/IApp$State;)V

    .line 785
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    const/16 v0, 0x18

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    const/4 p1, 0x1

    .line 786
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setSeekBarEnable(Z)V

    const/4 v0, 0x0

    .line 787
    invoke-virtual {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->sendZoomUIMessage(Z)V

    .line 789
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0xb

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return p1

    .line 780
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->onScaleEnd(Landroid/view/ScaleGestureDetector;)Z

    move-result p0

    return p0
.end method

.method protected seekprogressToZoomValue(I)I
    .locals 1

    .line 968
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_0

    return v0

    .line 973
    :cond_1
    sget p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    return p0
.end method

.method abstract sendZoomUIMessage(Z)V
.end method

.method public setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
    .locals 0

    .line 436
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraOperateActionControl:Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    return-void
.end method

.method public setDeviceSetting(Lcom/transsion/camera/app/common/setting/ISetting;)V
    .locals 5

    .line 257
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-nez p1, :cond_0

    .line 259
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mDeviceSetting is null!"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 263
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_macro"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 264
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "wide_camera"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 266
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_tele_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 267
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_normal_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 268
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 269
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 270
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "mode_entry_key"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    .line 275
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackMacroCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    .line 276
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getFrontWideCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackVideoCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBack2XBlurCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->m2XBlurCameraId:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackSATCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 281
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionBackCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBackHighCameraId:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getHighDefinitionFrontCamera()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontHighCameraId:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    .line 286
    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInAsdMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatReplaceWide:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueSatReplacedToMain:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    goto :goto_0

    .line 289
    :cond_2
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mValueWideToMain:I

    iput v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mThreshholdValue:I

    .line 291
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraChangeDuringScale:Z

    .line 292
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setDeviceSetting], camera id change:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {v0}, Lcom/transsion/camera/app/common/setting/ISetting;->getSupport()Ljava/util/List;

    move-result-object v0

    .line 294
    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getSettingValue()Ljava/lang/String;

    move-result-object p1

    .line 296
    iget v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviousValue:I

    if-nez p1, :cond_3

    .line 298
    sget p1, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->DEFAULT_ZOOM_VALUE:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    goto :goto_1

    .line 300
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    .line 302
    :goto_1
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStartZoomValue:I

    .line 303
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mLastCurrentValue:I

    .line 304
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomStyle:I

    const-string v2, "0"

    if-eqz p1, :cond_7

    .line 305
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 306
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 307
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 308
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 316
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 317
    iget-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsInMacroMode:Z

    if-nez p1, :cond_7

    .line 318
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraZoomList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 309
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 310
    :cond_6
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 311
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 312
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    rem-int/lit8 v3, v3, 0xa

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    .line 313
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 323
    :cond_7
    :goto_4
    invoke-static {v0}, Lcom/transsion/camera/utils/StringUtils;->stringToIntList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p1, :cond_d

    .line 325
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_d

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->isModeSupport()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 326
    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    .line 327
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    .line 328
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSupportedValues:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMaxValue:I

    .line 330
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    const-string v1, "1"

    .line 331
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mVideoCameraId:Ljava/lang/String;

    .line 332
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTeleCameraId:Ljava/lang/String;

    .line 333
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSatCameraId:Ljava/lang/String;

    .line 334
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBackHighCameraId:Ljava/lang/String;

    .line 335
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontHighCameraId:Ljava/lang/String;

    .line 336
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    .line 338
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomSupportForWide()Z

    move-result p1

    if-nez p1, :cond_9

    .line 339
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    goto :goto_6

    .line 340
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMacroCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isZoomSupportForMacro()Z

    move-result p1

    if-nez p1, :cond_a

    .line 341
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    goto :goto_6

    .line 342
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mFrontWideCameraId:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 343
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    goto :goto_6

    .line 337
    :cond_b
    :goto_5
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mMinValue:I

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNormalZoomMinValue:I

    .line 346
    :cond_c
    :goto_6
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string v1, "key_camera_click_zoom"

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 347
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    goto :goto_7

    .line 350
    :cond_d
    iput-boolean v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mIsSupported:Z

    :cond_e
    :goto_7
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

.method setLayoutPadding(Z)V
    .locals 2

    .line 243
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 244
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getTopRegionHeight()I

    move-result p1

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {v1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getCutoutHeight()I

    move-result v1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTopPadding:I

    .line 246
    :cond_0
    iget p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    if-ne p1, v0, :cond_1

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mAppUIRect:Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;->getModePlusBottomBarHeight()I

    move-result p1

    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mBottomPadding:I

    :cond_1
    return-void
.end method

.method public setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V
    .locals 0

    .line 419
    invoke-super {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->setModeFeatureSupport(Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;)V

    .line 420
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeFeatureSupport:Lcom/transsion/camera/app/common/mode/IModeFeatureSupport;

    return-void
.end method

.method public setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    .line 399
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->registerZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    return-void
.end method

.method abstract setSeekBarEnable(Z)V
.end method

.method public setSettingMonitor(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    return-void
.end method

.method public setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
    .locals 0

    .line 409
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mSettingStatusListener:Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;

    return-void
.end method

.method protected setValueToSetting(I)V
    .locals 4

    .line 1255
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1256
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1257
    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz v2, :cond_0

    .line 1258
    invoke-interface {v2, v0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 1260
    :cond_0
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/CameraRepository;->isBackSATCamera(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1261
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    const/4 v2, 0x1

    if-lt p1, v0, :cond_2

    .line 1262
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v3

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/CameraRepository;->getBack5XLongFocusCameraMiniZoom()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 1263
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 1264
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f100301

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1265
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f050056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v0, 0x7f100306

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1269
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1270
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1272
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_8

    .line 1273
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto/16 :goto_1

    :cond_2
    const-string v0, "100"

    .line 1275
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge p1, v3, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v1, v3, :cond_4

    :cond_3
    if-nez v1, :cond_6

    iget v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomDirect:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_6

    .line 1277
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCameraRepository:Lcom/transsion/camera/app/common/CameraRepository;

    invoke-interface {p1}, Lcom/transsion/camera/app/common/setting/ISetting;->getCurrentCameraId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->isMicroPanTiltCamera(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1278
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f1001d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f100241

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1282
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1283
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1284
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_8

    .line 1285
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_1

    .line 1287
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-lt p1, v0, :cond_8

    .line 1288
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraMiniZoom()I

    move-result v0

    if-lt p1, v0, :cond_7

    .line 1289
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCamera()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    .line 1290
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_8

    .line 1291
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_8
    :goto_1
    return-void
.end method

.method abstract setWheelViewShowFlag(Z)V
.end method

.method public setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mWideCameraControl:Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;

    return-void
.end method

.method public setZoomOffsetPadding(I)V
    .locals 0

    .line 1592
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mOffsetPadding:I

    return-void
.end method

.method public setupEntryView()V
    .locals 0

    .line 217
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    return-void
.end method

.method protected showHint(Ljava/lang/String;)V
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {v0, p1}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 1247
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->enableBackground(Z)V

    .line 1248
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-virtual {p1, v0}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 1249
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz p1, :cond_0

    .line 1250
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->showHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_0
    return-void
.end method

.method abstract showZoomUI(Z)V
.end method

.method abstract showZoomWheel()V
.end method

.method public unInit()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->mHintControl:Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;

    if-eqz v0, :cond_0

    .line 457
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mHintInfo:Lcom/transsion/camera/app/common/ui/HintInfo;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;->hideHint(Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPhysicalKeyControl:Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mZoomKeyEventCallback:Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;->unregisterZoomKeyEventCallback(Lcom/transsion/camera/app/common/IAppUIControl$IZoomKeyEventCallback;)V

    .line 461
    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->hideZoomUI()V

    .line 462
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_1

    .line 463
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_macro"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 464
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "wide_camera"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 466
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_tele_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 467
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_normal_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 468
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_long_click"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 469
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_wide_camera_item_seleccted"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 470
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "mode_entry_key"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 471
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mStatusChangeListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v2, "key_conflict_ui_state"

    invoke-virtual {v0, v2, v1}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    .line 473
    :cond_1
    invoke-super {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractCommonSettingUI;->unInit()V

    return-void
.end method

.method public updateModeConfig(Lcom/transsion/camera/app/common/ModeConfig;)V
    .locals 3

    .line 1574
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateModeConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p1, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraEntries:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 1576
    iput p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    .line 1577
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    .line 1578
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    .line 1579
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    .line 1580
    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    goto :goto_0

    .line 1582
    :cond_0
    iget-boolean v1, p1, Lcom/transsion/camera/app/common/ModeConfig;->mSatSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportSat:Z

    .line 1583
    array-length v1, v0

    iput v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mNumOfWideCameraItem:I

    .line 1584
    iget-boolean v1, p1, Lcom/transsion/camera/app/common/ModeConfig;->mWideCameraSupport:Z

    iput-boolean v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportWide:Z

    .line 1585
    iget-boolean p1, p1, Lcom/transsion/camera/app/common/ModeConfig;->mFrontWideCameraSupport:Z

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportFrontWide:Z

    const-string p1, "com.transsion.camera.ui.setting.zoom.TeleZoomSettingUIEntry"

    .line 1586
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mModeSupportTele:Z

    :goto_0
    return-void
.end method

.method public updatePreviewRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method abstract updateZoomValueToUI()V
.end method

.method protected zoomValueChange(I)V
    .locals 4

    .line 997
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraTypeWhenSeek(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v1, v0, :cond_0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    .line 999
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->getTargetDeviceZoomValue(II)Ljava/lang/String;

    move-result-object p1

    .line 1000
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCameraBy zoomValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1001
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->updateTeleCameraZoom(Ljava/lang/String;)V

    .line 1002
    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->switchCameraBy(I)Z

    :cond_1
    return-void
.end method
