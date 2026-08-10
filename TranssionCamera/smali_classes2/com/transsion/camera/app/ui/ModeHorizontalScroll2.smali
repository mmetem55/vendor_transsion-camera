.class public Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;
.super Ljava/lang/Object;
.source "ModeHorizontalScroll2.java"

# interfaces
.implements Lcom/transsion/camera/app/ui/scroll/IScrollOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;
    }
.end annotation


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mIsSupportedMoreMode:Z

.field private mModePickerScrollBottonY:I

.field private mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

.field private mPreviewBottomY:I

.field private mPreviewTopY:I

.field private final mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mStartPull:Z

.field private mStartY:F

.field private final mTriggerScrollDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ModeHorizontalScroll2"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/ui/ScreenManager;Lcom/transsion/camera/app/mode/ModePickerConfig;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 33
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 34
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mTriggerScrollDistance:I

    .line 35
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getTopBarHeight()I

    move-result v0

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    .line 36
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewBottomY:I

    .line 37
    invoke-virtual {p2}, Lcom/transsion/camera/app/mode/ModePickerConfig;->modePickerStyleNormalMore()Z

    move-result p2

    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mIsSupportedMoreMode:Z

    if-eqz p2, :cond_0

    .line 39
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewBottomY:I

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePickerMainLayoutHeight()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModePickerScrollBottonY:I

    goto :goto_0

    .line 41
    :cond_0
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewBottomY:I

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePickerMainLayoutHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 42
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePlusBottomBarHeight()I

    move-result v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getNavigationHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 43
    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getShutterButtonHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ScreenManager;->getModePickerScollExtra()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr p2, v0

    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModePickerScrollBottonY:I

    :goto_0
    return-void
.end method

.method private canScrollToNext()Z
    .locals 2

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToNext()Z

    move-result p0

    if-nez p0, :cond_0

    .line 96
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToNext mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private canScrollToPrevious()Z
    .locals 2

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrollToPrevious()Z

    move-result p0

    if-nez p0, :cond_0

    .line 104
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not ScrollToPrevious mModeScroll or  mModeIcon in scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method private canScrolling()Z
    .locals 2

    .line 86
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->canScrolling()Z

    move-result p0

    if-nez p0, :cond_0

    .line 88
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "can not Scrolling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public down(FF)V
    .locals 0

    .line 53
    iput p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    return-void
.end method

.method public pulling(FF)Z
    .locals 4

    .line 59
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModePickerScrollBottonY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto/16 :goto_1

    .line 64
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrolling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    sget-object p1, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return pulling mStartPull = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " canScrolling = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrolling()Z

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2

    .line 69
    :cond_1
    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    int-to-float v0, v0

    iget v1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    cmpg-float v0, v0, v1

    const/4 v3, 0x1

    if-gtz v0, :cond_4

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewBottomY:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_4

    float-to-int p1, p1

    .line 70
    iget p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mTriggerScrollDistance:I

    div-int/2addr p1, p2

    if-lez p1, :cond_2

    .line 71
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrollToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez p2, :cond_2

    .line 72
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToNext()V

    .line 73
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    goto :goto_0

    :cond_2
    if-gez p1, :cond_3

    .line 74
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->canScrollToPrevious()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-nez p1, :cond_3

    .line 75
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p1}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrollToPrevious()V

    .line 76
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    :cond_3
    :goto_0
    return v2

    .line 80
    :cond_4
    iput-boolean v3, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->scrolling(FF)V

    return v2

    .line 60
    :cond_5
    :goto_1
    sget-object p1, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "return pulling mStartY = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartY:F

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " previewTopY ="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mPreviewTopY:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v2
.end method

.method public setModeScroll(Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    return-void
.end method

.method public stopPulling()Z
    .locals 2

    .line 111
    sget-object v0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "stopPulling"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 112
    iget-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mStartPull:Z

    .line 114
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mModeScroll:Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;

    invoke-interface {v0}, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2$IModeScrollCallback;->stopScroll()V

    .line 116
    :cond_0
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ModeHorizontalScroll2;->mIsSupportedMoreMode:Z

    return p0
.end method
