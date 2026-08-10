.class public Lcom/transsion/camera/app/ui/topbar/TopBarContainer;
.super Landroid/widget/FrameLayout;
.source "TopBarContainer.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAvailableHeight:I

.field private mAvailableWidth:I

.field private mOrientation:I

.field private mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

.field private mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

.field private mViewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    .line 35
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    .line 48
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$002(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100()Lcom/transsion/camera/utils/debug/Log$Tag;
    .locals 1

    .line 28
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$200(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    return-object p0
.end method


# virtual methods
.method public initManager(Lcom/transsion/camera/app/ui/ScreenManager;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    return-void
.end method

.method public initWidthAndHeight(II)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    .line 101
    iput p2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 57
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 58
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 59
    new-instance p1, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/topbar/TopBarContainer$1;-><init>(Lcom/transsion/camera/app/ui/topbar/TopBarContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3

    .line 95
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onOrientationChanged] orientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 96
    iput p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    return-void
.end method

.method public setPaddingByToolbarScroll(IIII)V
    .locals 3

    .line 105
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPaddingByToolbarScroll left: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", top: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", right: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bottom: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method

.method public updateTopBar(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[updateTopBar] mAvailableWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAvailableHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", viewMap.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    .line 86
    iget p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableWidth:I

    if-lez p1, :cond_1

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mAvailableHeight:I

    invoke-virtual {v0, p1, v1}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->setContainerWidthAndHeight(II)V

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mUpdateHelper:Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mViewMap:Ljava/util/Map;

    iget v1, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mOrientation:I

    iget-object p0, p0, Lcom/transsion/camera/app/ui/topbar/TopBarContainer;->mScreenManager:Lcom/transsion/camera/app/ui/ScreenManager;

    .line 89
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScreenManager;->getScreenFormType()I

    move-result p0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/transsion/camera/app/ui/topbar/TopBarUpdateHelper;->update(Ljava/util/Map;IZ)V

    :cond_1
    return-void
.end method
