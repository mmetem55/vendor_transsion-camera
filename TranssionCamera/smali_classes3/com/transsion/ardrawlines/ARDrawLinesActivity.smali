.class public Lcom/transsion/ardrawlines/ARDrawLinesActivity;
.super Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;
.source "ARDrawLinesActivity.java"

# interfaces
.implements Lcom/unity3d/player/IUnityPlayerLifecycleEvents;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/ardrawlines/base/BaseAppCompatActivity<",
        "Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;",
        ">;",
        "Lcom/unity3d/player/IUnityPlayerLifecycleEvents;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ARDrawLinesActivity"


# instance fields
.field private mBatteryViewHolder:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

.field private mBrushViewHolder:Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

.field private mDiscardContentDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mGuideViewHolder:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

.field private mImageCaptureViewHolder:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

.field private mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

.field private mMyOrientationListener:Lcom/transsion/ardrawlines/rotate/MyOrientationListener;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

.field private mVideoRecordViewHolder:Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;


# direct methods
.method public static synthetic $r8$lambda$CmLepcA1lL0Urb4AjAUXkMJkqxw(Lcom/transsion/ardrawlines/ARDrawLinesActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->lambda$popUpDiscardContentDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QP3r3WT6DD9eFSkPgbCLE4ZOVjE(Lcom/transsion/ardrawlines/ARDrawLinesActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->lambda$popUpDiscardContentDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kr4rOthLhOsnVva0NeQyu2cX2GE(Lcom/transsion/ardrawlines/ARDrawLinesActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->lambda$popUpDiscardContentDialog$0(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$popUpDiscardContentDialog$0(Landroid/content/DialogInterface;)V
    .locals 0

    .line 279
    iget-object p1, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->getRecordingStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 280
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->callToStopRecording()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$popUpDiscardContentDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$popUpDiscardContentDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 287
    iget-object p1, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {p1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->getRecordingStatus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->callToStopRecording()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mBatteryViewHolder:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->refresh()V

    .line 227
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 229
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mBatteryViewHolder:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->refresh()V

    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getUnityPlayer()Lcom/unity3d/player/UnityPlayer;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method public initData()V
    .locals 0

    const-string p0, "ml_home_ex"

    .line 93
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    return-void
.end method

.method public initViews()V
    .locals 2

    .line 80
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    .line 81
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mImageCaptureViewHolder:Lcom/transsion/ardrawlines/viewholder/ImageCaptureViewHolder;

    .line 82
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mVideoRecordViewHolder:Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;

    .line 83
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mBrushViewHolder:Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

    .line 84
    new-instance v0, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mGuideViewHolder:Lcom/transsion/ardrawlines/viewholder/GuideViewHolder;

    .line 85
    invoke-static {}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->getInstance()Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mBatteryViewHolder:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    .line 86
    new-instance v0, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lcom/transsion/ardrawlines/rotate/MyOrientationListener;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMyOrientationListener:Lcom/transsion/ardrawlines/rotate/MyOrientationListener;

    .line 87
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 88
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setKeepScreenOn(Z)V

    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->getRecordingStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mVideoRecordViewHolder:Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;

    invoke-virtual {v2}, Lcom/transsion/ardrawlines/viewholder/VideoRecordViewHolder;->getStartTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 261
    sget-object p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->TAG:Ljava/lang/String;

    const-string v0, "onBackPressed: 500ms is not enough for recording"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMultimediaViewHolder:Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/viewholder/MultimediaViewHolder;->callToPauseRecording()V

    .line 265
    sget v0, Lcom/transsion/ardrawlines/R$string;->discard_save_question:I

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->popUpDiscardContentDialog(I)V

    goto :goto_0

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mBrushViewHolder:Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;

    invoke-virtual {v0}, Lcom/transsion/ardrawlines/viewholder/BrushViewHolder;->getPaintingExistState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    sget v0, Lcom/transsion/ardrawlines/R$string;->discard_content:I

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->popUpDiscardContentDialog(I)V

    goto :goto_0

    .line 270
    :cond_2
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 207
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/16 v0, 0xd

    .line 60
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 61
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "unity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    new-instance p1, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {p1, p0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/Context;Lcom/unity3d/player/IUnityPlayerLifecycleEvents;)V

    iput-object p1, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 68
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    iget-object p1, p1, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;->unityPlayer:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestFocus()Z

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->destroy()V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mMyOrientationListener:Lcom/transsion/ardrawlines/rotate/MyOrientationListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 180
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityArdrawlinesBinding;

    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 181
    invoke-super {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onDestroy()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 307
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 299
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 248
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->onBackPressed()V

    .line 250
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 254
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLowMemory()V
    .locals 0

    .line 187
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onLowMemory()V

    .line 188
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 119
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->newIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 151
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->saveMultiWindowMode(Landroid/app/Activity;)V

    .line 152
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 137
    sget v0, Lcom/transsion/ardrawlines/R$anim;->fadein:I

    sget v1, Lcom/transsion/ardrawlines/R$anim;->fadeout:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 138
    invoke-super {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onResume()V

    .line 139
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mBatteryViewHolder:Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/transsion/ardrawlines/screen/BatteryViewHolder;->changeHolder(Ljava/lang/ref/WeakReference;)Lcom/transsion/ardrawlines/screen/BatteryViewHolder;

    .line 140
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->isMultiWindowModeChangedToTrue(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 126
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 127
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 165
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 166
    invoke-static {p0}, Lcom/unity3d/player/MultiWindowSupport;->getAllowResizableWindow(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0

    .line 242
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 196
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 198
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/unity3d/player/UnityPlayer;->lowMemory()V

    :cond_0
    return-void
.end method

.method public onUnityPlayerQuitted()V
    .locals 0

    return-void
.end method

.method public onUnityPlayerUnloaded()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 216
    invoke-super {p0, p1}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onWindowFocusChanged(Z)V

    .line 217
    iget-object p0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    :cond_0
    return-void
.end method

.method public popUpDiscardContentDialog(I)V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mDiscardContentDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 277
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/transsion/ardrawlines/ARDrawLinesActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/ardrawlines/ARDrawLinesActivity;)V

    .line 278
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    .line 283
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 284
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->discard_ar:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/ardrawlines/ARDrawLinesActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/ardrawlines/ARDrawLinesActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/ardrawlines/ARDrawLinesActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/transsion/ardrawlines/ARDrawLinesActivity$$ExternalSyntheticLambda2;-><init>(Lcom/transsion/ardrawlines/ARDrawLinesActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/ardrawlines/ARDrawLinesActivity;->mDiscardContentDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/os/Bundle;)I
    .locals 0

    .line 75
    sget p0, Lcom/transsion/ardrawlines/R$layout;->activity_ardrawlines:I

    return p0
.end method

.method protected updateUnityCommandLineArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
