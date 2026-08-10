.class public Lcom/transsion/camera/app/ui/ScrollConsumer;
.super Ljava/lang/Object;
.source "ScrollConsumer.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/IScroll;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingAnimationState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;,
        Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mGoBackToInitInAnimator:Z

.field private mInScrolling:Z

.field private final mInitial:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mIsCapturing:Z

.field private mMode:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private final mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

.field private mNeedShowGuide:Z

.field private final mPreparing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mPulling:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mPushing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mScrollDisable:Z

.field private mScrollDistanceX:F

.field private mScrollDistanceY:F

.field private final mShrinking:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mShrinkingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mSpread:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mSpreadModeAfterShrinking:Z

.field private final mSpreading:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private final mSpreadingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

.field private mSupportQC:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ScrollConsumer"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    .line 16
    new-instance v0, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;

    const-string v1, "InitialState"

    invoke-direct {v0, p0, v1}, Lcom/transsion/camera/app/ui/ScrollConsumer$InitialState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInitial:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 17
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;

    const-string v2, "PreparingState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$PreparingState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreparing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 18
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;

    const-string v2, "ScrollingState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$PullingState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPulling:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 19
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingAnimationState;

    const-string v2, "SpreadingAnimationState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreading:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 20
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;

    const-string v2, "SpreadingBackAnimationState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadingBackAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 21
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;

    const-string v2, "SpreadState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$SpreadState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpread:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 22
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;

    const-string v2, "PushingState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$PushingState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPushing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 23
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;

    const-string v2, "ShrinkingAnimationState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinking:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    .line 24
    new-instance v1, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;

    const-string v2, "ShrinkingBackAnimationState"

    invoke-direct {v1, p0, v2}, Lcom/transsion/camera/app/ui/ScrollConsumer$ShrinkingBackAnimationState;-><init>(Lcom/transsion/camera/app/ui/ScrollConsumer;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinkingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mNeedShowGuide:Z

    .line 29
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    .line 71
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    .line 72
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    .line 73
    iput-boolean v1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mIsCapturing:Z

    .line 32
    invoke-virtual {v0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->enter(Lcom/transsion/camera/app/ui/ScrollConsumer$State;)V

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/ScrollConsumer$State;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 9
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInitial:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mNeedShowGuide:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpread:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mGoBackToInitInAnimator:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mGoBackToInitInAnimator:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinking:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPushing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mShrinkingBack:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mMode:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/ScrollConsumer;Lcom/transsion/camera/app/ui/scroll/ScrollMode;)Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mMode:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/ScrollConsumer;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadModeAfterShrinking:Z

    return p0
.end method

.method static synthetic access$402(Lcom/transsion/camera/app/ui/ScrollConsumer;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreadModeAfterShrinking:Z

    return p1
.end method

.method static synthetic access$500(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPreparing:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSpreading:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method static synthetic access$700(Lcom/transsion/camera/app/ui/ScrollConsumer;)F
    .locals 0

    .line 9
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    return p0
.end method

.method static synthetic access$800(Lcom/transsion/camera/app/ui/ScrollConsumer;)F
    .locals 0

    .line 9
    iget p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    return p0
.end method

.method static synthetic access$900(Lcom/transsion/camera/app/ui/ScrollConsumer;)Lcom/transsion/camera/app/ui/ScrollConsumer$State;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mPulling:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    return-object p0
.end method

.method private cancelScroll()V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->stopScrollImmediate()V

    return-void
.end method

.method private scrollImmediate(FF)V
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    .line 130
    iget v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->scroll(FF)V

    return-void
.end method

.method private startScrollImmediate()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    .line 112
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    .line 113
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->startScroll()V

    return-void
.end method

.method private stopScrollImmediate()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/transsion/camera/app/ui/ScrollConsumer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopScroll"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 147
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mInScrolling:Z

    const/4 v0, 0x0

    .line 148
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceX:F

    .line 149
    iput v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDistanceY:F

    .line 150
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->stopScroll()V

    return-void
.end method


# virtual methods
.method public down(FF)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getLeftRightMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    .line 97
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getTopDown()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    .line 98
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollMode;->down(FF)V

    return-void
.end method

.method public hideModePanel()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method public isEnable()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mIsCapturing:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method modePicked()V
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method onBackPressed()Z
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    move-result p0

    return p0
.end method

.method public registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    return-void
.end method

.method public scroll(FF)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->setModePanelGuideEnable(Z)V

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ScrollConsumer;->scrollImmediate(FF)V

    return-void
.end method

.method public setIsCapturing(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mIsCapturing:Z

    return-void
.end method

.method setModePanelGuideEnable(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mNeedShowGuide:Z

    return-void
.end method

.method public setScrollEnable(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->cancelScroll()V

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    .line 79
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    return-void
.end method

.method public setSupportQC(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mSupportQC:Z

    return-void
.end method

.method settingPicked()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method shrinkTopBar()V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->reset()Z

    return-void
.end method

.method public spreadModePanel()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mCurrentState:Lcom/transsion/camera/app/ui/ScrollConsumer$State;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer$State;->spreadMode()V

    return-void
.end method

.method public startScroll()V
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->startScrollImmediate()V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mScrollDisable:Z

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->stopScrollImmediate()V

    return-void
.end method

.method public unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ScrollConsumer;->mModeProvider:Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V

    return-void
.end method
