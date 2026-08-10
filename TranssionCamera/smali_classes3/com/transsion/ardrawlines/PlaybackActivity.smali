.class public Lcom/transsion/ardrawlines/PlaybackActivity;
.super Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;
.source "PlaybackActivity.java"

# interfaces
.implements Lcom/transsion/ardrawlines/share/IShareApplicationListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/ardrawlines/base/BaseAppCompatActivity<",
        "Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;",
        ">;",
        "Lcom/transsion/ardrawlines/share/IShareApplicationListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaybackActivity"


# instance fields
.field private mActionBar:Landroidx/appcompat/app/ActionBar;

.field mAllowBack:Z

.field private mFile:Ljava/io/File;

.field private mFilePath:Ljava/lang/String;

.field private mIsImage:Z

.field private mIsSavingFile:Z

.field private mMediaManager:Lcom/transsion/camera/manager/MediaManager;

.field private mSaveFileTask:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

.field private mShareMedia:Lcom/transsion/ardrawlines/share/ShareMedia;

.field mShowDialog:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmFile(Lcom/transsion/ardrawlines/PlaybackActivity;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsSavingFile(Lcom/transsion/ardrawlines/PlaybackActivity;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsSavingFile:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsSavingFile:Z

    const/4 v1, 0x0

    .line 45
    iput-object v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mSaveFileTask:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    const/4 v1, 0x1

    .line 302
    iput-boolean v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mShowDialog:Z

    .line 303
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mAllowBack:Z

    return-void
.end method

.method private showCancelDialog()V
    .locals 3

    .line 316
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-direct {v0, p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/ardrawlines/R$string;->discard_save_question:I

    .line 317
    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(I)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->cancel:I

    new-instance v2, Lcom/transsion/ardrawlines/PlaybackActivity$4;

    invoke-direct {v2, p0}, Lcom/transsion/ardrawlines/PlaybackActivity$4;-><init>(Lcom/transsion/ardrawlines/PlaybackActivity;)V

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object v0

    sget v1, Lcom/transsion/ardrawlines/R$string;->discard_ar:I

    new-instance v2, Lcom/transsion/ardrawlines/PlaybackActivity$3;

    invoke-direct {v2, p0}, Lcom/transsion/ardrawlines/PlaybackActivity$3;-><init>(Lcom/transsion/ardrawlines/PlaybackActivity;)V

    .line 324
    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    move-result-object p0

    .line 334
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->show()Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method

.method public static toPlaybackActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/ardrawlines/PlaybackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FilePath"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "IsImage"

    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 53
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public getBytesByFile(Ljava/io/File;)[B
    .locals 3

    .line 215
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 218
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x400

    invoke-direct {p1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v0, v0, [B

    .line 222
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 223
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 227
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 229
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 232
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public initData()V
    .locals 3

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FilePath"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFilePath:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-boolean v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsImage:Z

    const-string v2, "IsImage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsImage:Z

    .line 74
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    .line 79
    :cond_0
    new-instance v0, Lcom/transsion/ardrawlines/share/ShareMedia;

    invoke-direct {v0, p0}, Lcom/transsion/ardrawlines/share/ShareMedia;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mShareMedia:Lcom/transsion/ardrawlines/share/ShareMedia;

    .line 80
    invoke-virtual {v0, p0}, Lcom/transsion/ardrawlines/share/ShareMedia;->setIShareApplicationListener(Lcom/transsion/ardrawlines/share/IShareApplicationListener;)V

    .line 82
    new-instance v0, Lcom/transsion/camera/manager/MediaManager;

    invoke-direct {v0, p0}, Lcom/transsion/camera/manager/MediaManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    .line 83
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public initViews()V
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/transsion/ardrawlines/permission/PermissionManager;->checkStoragePermission(Landroid/app/Activity;)V

    .line 64
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addShakeClick(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playBackPress:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addShakeClick(Landroid/view/View;)V

    .line 66
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addShakeClick(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->addShakeClick(Landroid/view/View;)V

    return-void
.end method

.method public onApplicationEnabled(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onApplicationInstalled(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 307
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mShowDialog:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-direct {p0}, Lcom/transsion/ardrawlines/PlaybackActivity;->showCancelDialog()V

    .line 310
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mAllowBack:Z

    if-eqz v0, :cond_1

    .line 311
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 130
    invoke-super {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onDestroy()V

    .line 131
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->close()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 119
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 113
    invoke-super {p0}, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->onResume()V

    .line 114
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->resume()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 104
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 105
    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart:wow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlaybackActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

    iget-object v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    iget-boolean p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsImage:Z

    invoke-virtual {v0, v1, p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->open(Ljava/io/File;Z)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 124
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    .line 125
    iget-object p0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playbackView:Lcom/transsion/ardrawlines/view/PlaybackView;

    invoke-virtual {p0}, Lcom/transsion/ardrawlines/view/PlaybackView;->pause()V

    return-void
.end method

.method public onViewClicked(Landroid/view/View;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->saveButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    iget-boolean p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsSavingFile:Z

    if-eqz p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    iget-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsImage:Z

    invoke-virtual {p0, p0, p1, v0}, Lcom/transsion/ardrawlines/PlaybackActivity;->saveMediaFile(Landroid/content/Context;Ljava/io/File;Z)V

    const-string p0, "ml_playback_save_cl"

    .line 93
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    iget-object p1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mShareMedia:Lcom/transsion/ardrawlines/share/ShareMedia;

    iget-object v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mFile:Ljava/io/File;

    iget-boolean p0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsImage:Z

    invoke-virtual {p1, v0, p0}, Lcom/transsion/ardrawlines/share/ShareMedia;->shareMediaFile(Ljava/io/File;Z)V

    const-string p0, "ml_share_cl"

    .line 96
    invoke-static {p0}, Lcom/transsion/analysislibrary/StatisticAnalysis;->sendMsg(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Lcom/transsion/ardrawlines/base/BaseAppCompatActivity;->mBinding:Landroidx/databinding/ViewDataBinding;

    check-cast v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;

    iget-object v0, v0, Lcom/transsion/ardrawlines/databinding/ActivityPlaybackBinding;->playBackPress:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/PlaybackActivity;->onBackPressed()V

    :cond_3
    :goto_0
    return-void
.end method

.method public saveMediaFile(Landroid/content/Context;Ljava/io/File;Z)V
    .locals 3

    .line 150
    invoke-static {p1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->hasStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 152
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsSavingFile:Z

    .line 153
    iget-object p3, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    invoke-virtual {p0, p2}, Lcom/transsion/ardrawlines/PlaybackActivity;->getBytesByFile(Ljava/io/File;)[B

    move-result-object v0

    new-instance v1, Lcom/transsion/ardrawlines/PlaybackActivity$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/transsion/ardrawlines/PlaybackActivity$1;-><init>(Lcom/transsion/ardrawlines/PlaybackActivity;Ljava/io/File;Landroid/content/Context;)V

    invoke-virtual {p3, v0, v1}, Lcom/transsion/camera/manager/MediaManager;->savePhoto([BLcom/transsion/camera/app/common/storage/MediaSaver$MediaSaverListener;)V

    goto :goto_0

    .line 167
    :cond_0
    iput-boolean v0, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mIsSavingFile:Z

    .line 169
    iget-object p3, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mMediaManager:Lcom/transsion/camera/manager/MediaManager;

    invoke-virtual {p3}, Lcom/transsion/camera/manager/MediaManager;->isExternalStorage()Z

    move-result p3

    invoke-static {p1, p3}, Lcom/transsion/ardrawlines/fileoperator/VideoFileUtils;->createVideoFileWithExternalStorage(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object p3

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new SDCard File = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/widgetscore/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    invoke-direct {v1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;-><init>()V

    iput-object v1, p0, Lcom/transsion/ardrawlines/PlaybackActivity;->mSaveFileTask:Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    .line 172
    new-instance v2, Lcom/transsion/ardrawlines/PlaybackActivity$2;

    invoke-direct {v2, p0, p1, p3, p2}, Lcom/transsion/ardrawlines/PlaybackActivity$2;-><init>(Lcom/transsion/ardrawlines/PlaybackActivity;Landroid/content/Context;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->setOnSaveListener(Lcom/transsion/ardrawlines/fileoperator/SaveFileTask$OnSaveListener;)Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/io/File;

    const/4 v1, 0x0

    aput-object p2, p1, v1

    aput-object p3, p1, v0

    .line 203
    invoke-virtual {p0, p1}, Lcom/transsion/ardrawlines/fileoperator/SaveFileTask;->loadExecute([Ljava/io/File;)V

    goto :goto_0

    .line 208
    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/transsion/ardrawlines/permission/PermissionManager;->checkStoragePermission(Landroid/app/Activity;)V

    :goto_0
    return-void
.end method

.method public setContentView(Landroid/os/Bundle;)I
    .locals 0

    .line 58
    sget p0, Lcom/transsion/ardrawlines/R$layout;->activity_playback:I

    return p0
.end method

.method public useActionBar()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public useSystem()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
