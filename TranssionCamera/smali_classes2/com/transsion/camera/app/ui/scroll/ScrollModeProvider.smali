.class public Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;
.super Ljava/lang/Object;
.source "ScrollModeProvider.java"


# static fields
.field private static final sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;


# instance fields
.field private mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

.field private final mTriggerXModeThreshold:I

.field private final mTriggerYModeThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/transsion/camera/app/ui/scroll/NullMode;

    invoke-direct {v0}, Lcom/transsion/camera/app/ui/scroll/NullMode;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 8
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    .line 9
    iput-object v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerXModeThreshold:I

    const/16 v0, 0x18

    .line 14
    iput v0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerYModeThreshold:I

    return-void
.end method

.method private enterHorizontalScroll(II)Z
    .locals 1

    .line 79
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerXModeThreshold:I

    if-le v0, p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private enterVerticalScroll(II)Z
    .locals 1

    .line 75
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTriggerYModeThreshold:I

    if-le v0, p0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getBottomUpMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public getLeftRightMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public getTopDown()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public registerScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V
    .locals 1

    .line 18
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider$1;->$SwitchMap$com$transsion$camera$app$ui$scroll$IScrollModeProvider$ScrollType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/LeftRight;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/LeftRight;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    goto :goto_0

    .line 23
    :cond_1
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/DownUp;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/DownUp;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    goto :goto_0

    .line 20
    :cond_2
    new-instance p1, Lcom/transsion/camera/app/ui/scroll/DownUp;

    invoke-direct {p1, p2}, Lcom/transsion/camera/app/ui/scroll/DownUp;-><init>(Lcom/transsion/camera/app/ui/scroll/IScrollOperation;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    :goto_0
    return-void
.end method

.method public suitableMode()Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 0

    .line 50
    sget-object p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public suitableMode(II)Lcom/transsion/camera/app/ui/scroll/ScrollMode;
    .locals 1

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->enterHorizontalScroll(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0

    .line 68
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->enterVerticalScroll(II)Z

    move-result p1

    if-eqz p1, :cond_2

    if-lez p2, :cond_1

    .line 69
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    :goto_0
    return-object p0

    .line 71
    :cond_2
    sget-object p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    return-object p0
.end method

.method public unregisterScroll(Lcom/transsion/camera/app/ui/scroll/IScrollModeProvider$ScrollType;)V
    .locals 1

    .line 34
    sget-object v0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider$1;->$SwitchMap$com$transsion$camera$app$ui$scroll$IScrollModeProvider$ScrollType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mLeftRight:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    goto :goto_0

    .line 39
    :cond_1
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mBottomUp:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    goto :goto_0

    .line 36
    :cond_2
    sget-object p1, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->sNun:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    iput-object p1, p0, Lcom/transsion/camera/app/ui/scroll/ScrollModeProvider;->mTopDown:Lcom/transsion/camera/app/ui/scroll/ScrollMode;

    :goto_0
    return-void
.end method
