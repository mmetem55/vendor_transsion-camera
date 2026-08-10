.class public Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;
.super Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;
.source "IntentVideoUI.java"


# instance fields
.field private mCurrentRecordingSizeView:Landroid/widget/TextView;

.field private mRecordingSizeSeekBar:Landroid/widget/SeekBar;

.field private mRecordingSizeTotalView:Landroid/widget/TextView;

.field private mRecordingSizeViewGroup:Landroid/view/View;

.field private mRecordingTotalSize:J


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
    .locals 6

    const v3, 0x7f0c00cc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 40
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/transsion/camera/app/common/IAppUIControl$IHintControl;Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V

    return-void
.end method

.method private static formatFileSize(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    .line 114
    div-long/2addr p0, v0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "KB"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected doCreateView()Landroid/view/View;
    .locals 3

    .line 51
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->doCreateView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0903af

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    const v1, 0x7f0903ac

    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mCurrentRecordingSizeView:Landroid/widget/TextView;

    const v1, 0x7f0903ad

    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    const v1, 0x7f0903b2

    .line 56
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeTotalView:Landroid/widget/TextView;

    .line 57
    iget-object v1, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI$1;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI$1;-><init>(Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V
    .locals 2

    .line 45
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->initVideoUI(Lcom/transsion/camera/app/common/ui/VideoUISpec;)V

    .line 46
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/VideoUISpec;->getRecordingTotalSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingTotalSize:J

    return-void
.end method

.method protected onHideRecordingUI()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onHideRecordingUI()V

    .line 89
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected onShowRecordingUI()V
    .locals 4

    .line 73
    invoke-super {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onShowRecordingUI()V

    .line 75
    iget-wide v0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/16 v1, 0x8

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mCurrentRecordingSizeView:Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeTotalView:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingTotalSize:J

    invoke-static {v2, v3}, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->formatFileSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/IntentVideoUI;->mRecordingSizeViewGroup:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onUpdateRecordingUI(Z)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->onUpdateRecordingUI(Z)V

    return-void
.end method
