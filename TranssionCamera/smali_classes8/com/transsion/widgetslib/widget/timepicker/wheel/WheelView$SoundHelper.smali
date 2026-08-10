.class Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;
.super Ljava/lang/Object;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundHelper"
.end annotation


# instance fields
.field private mPlayVolume:F

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2114
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    return-void
.end method

.method static obtain()Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;
    .locals 1

    .line 2126
    new-instance v0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;

    invoke-direct {v0}, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;-><init>()V

    return-object v0
.end method


# virtual methods
.method getPlayVolume()F
    .locals 0

    .line 2156
    iget p0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mPlayVolume:F

    return p0
.end method

.method load(Landroid/content/Context;I)V
    .locals 2

    .line 2136
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2137
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundId:I

    :cond_0
    return-void
.end method

.method playSoundEffect()V
    .locals 7

    .line 2163
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundId:I

    if-eqz v1, :cond_0

    .line 2164
    iget v3, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mPlayVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v2, v3

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_0
    return-void
.end method

.method release()V
    .locals 1

    .line 2172
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 2173
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 2174
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method setPlayVolume(F)V
    .locals 0

    .line 2147
    iput p1, p0, Lcom/transsion/widgetslib/widget/timepicker/wheel/WheelView$SoundHelper;->mPlayVolume:F

    return-void
.end method
