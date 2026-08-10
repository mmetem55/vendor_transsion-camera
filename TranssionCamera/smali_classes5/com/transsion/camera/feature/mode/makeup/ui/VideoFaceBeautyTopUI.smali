.class public Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;
.super Landroid/widget/LinearLayout;
.source "VideoFaceBeautyTopUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/makeup/ui/interactive/ITopUI;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;,
        Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;
    }
.end annotation


# static fields
.field public static final CLICK_FB_BAR:I = 0x1

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

.field private mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

.field private mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

.field private mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

.field private mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;

.field private mState:I

.field private mSwitchContainer:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$a8jkaBEvkhFvqH7m6xCC5Gkz_UA(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->lambda$onFinishInflate$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private synthetic lambda$onFinishInflate$0(IZ)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    if-eqz p0, :cond_0

    .line 184
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;->onProgressChanged(IZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public currentState()I
    .locals 0

    .line 153
    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    return p0
.end method

.method public notifyProgress(IIII)V
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->updateSeekBarData(IIII)V

    :cond_0
    return-void
.end method

.method public notifySelect(IZ)V
    .locals 0

    return-void
.end method

.method public notifyState(IZ)V
    .locals 4

    .line 115
    sget-object p2, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyState mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 116
    iput p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_6

    const/16 v2, 0x83

    if-eq p1, p2, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 141
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 128
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p1, :cond_4

    .line 129
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 132
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    invoke-interface {p1, v2}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    goto :goto_0

    .line 119
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p1, :cond_7

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    if-eqz p1, :cond_8

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    :cond_8
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    const/16 v1, 0x84

    invoke-interface {p1, v1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;

    if-eqz p1, :cond_a

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_9

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    move p2, v0

    .line 147
    :goto_1
    invoke-interface {p1, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;->onSeekBarVisible(Z)V

    :cond_a
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    const/4 v0, 0x1

    .line 105
    sput-boolean v0, Lcom/transsion/camera/feature/mode/makeup/ui/MakeUpTopUI;->isPressBack:Z

    .line 106
    iget v1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mState:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0, v2, v0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->notifyState(IZ)V

    return v0

    :cond_0
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 63
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;->barOnClick(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 171
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 172
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->switch_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSwitchContainer:Landroid/view/View;

    .line 177
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    :cond_0
    sget v0, Lcom/transsion/camera/feature/makeup/R$id;->seek_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    iput-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    .line 182
    new-instance v1, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;)V

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;->setOnSeekBarChangeListener(Lcom/transsion/camera/app/ui/widget/BiDiSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    const/4 p2, 0x0

    .line 52
    invoke-interface {p0, p2}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;->closeContrast(Z)V

    .line 53
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    if-eqz p0, :cond_2

    sget p2, Lcom/transsion/camera/feature/makeup/R$id;->contrast:I

    if-ne v0, p2, :cond_2

    .line 45
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;->openContrast()V

    .line 46
    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public setAppUI(Lcom/transsion/camera/app/common/IAppUI;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    .line 190
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 191
    sget-object v0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBar:Lcom/transsion/camera/app/ui/widget/BiDiSeekBar;

    if-eqz p0, :cond_0

    .line 196
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$BarClickListener;

    .line 99
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarChangeListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarChangeListener;

    .line 100
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mContrastListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$ContrastListener;

    .line 101
    iput-object p4, p0, Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI;->mSeekBarStatusListener:Lcom/transsion/camera/feature/mode/makeup/ui/VideoFaceBeautyTopUI$SeekBarStatusListener;

    return-void
.end method
