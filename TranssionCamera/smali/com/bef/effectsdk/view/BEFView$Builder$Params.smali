.class Lcom/bef/effectsdk/view/BEFView$Builder$Params;
.super Ljava/lang/Object;
.source "BEFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bef/effectsdk/view/BEFView$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Params"
.end annotation


# instance fields
.field private mFPS:D

.field private mFitMode:Lcom/bef/effectsdk/view/BEFView$FitMode;

.field private mKeepStatusAtPause:Z

.field private mNeglectTouchEvent:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mResourceFinder:Lcom/bef/effectsdk/ResourceFinder;

.field private mSceneKey:Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;

.field final synthetic this$0:Lcom/bef/effectsdk/view/BEFView$Builder;


# direct methods
.method private constructor <init>(Lcom/bef/effectsdk/view/BEFView$Builder;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->this$0:Lcom/bef/effectsdk/view/BEFView$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bef/effectsdk/view/BEFView$Builder;Lcom/bef/effectsdk/view/BEFView$1;)V
    .locals 0

    .line 148
    invoke-direct {p0, p1}, Lcom/bef/effectsdk/view/BEFView$Builder$Params;-><init>(Lcom/bef/effectsdk/view/BEFView$Builder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mRenderWidth:I

    return p0
.end method

.method static synthetic access$102(Lcom/bef/effectsdk/view/BEFView$Builder$Params;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mRenderWidth:I

    return p1
.end method

.method static synthetic access$200(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)I
    .locals 0

    .line 148
    iget p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mRenderHeight:I

    return p0
.end method

.method static synthetic access$202(Lcom/bef/effectsdk/view/BEFView$Builder$Params;I)I
    .locals 0

    .line 148
    iput p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mRenderHeight:I

    return p1
.end method

.method static synthetic access$300(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)D
    .locals 2

    .line 148
    iget-wide v0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mFPS:D

    return-wide v0
.end method

.method static synthetic access$302(Lcom/bef/effectsdk/view/BEFView$Builder$Params;D)D
    .locals 0

    .line 148
    iput-wide p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mFPS:D

    return-wide p1
.end method

.method static synthetic access$400(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Lcom/bef/effectsdk/view/BEFView$FitMode;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/effectsdk/view/BEFView$FitMode;

    return-object p0
.end method

.method static synthetic access$402(Lcom/bef/effectsdk/view/BEFView$Builder$Params;Lcom/bef/effectsdk/view/BEFView$FitMode;)Lcom/bef/effectsdk/view/BEFView$FitMode;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mFitMode:Lcom/bef/effectsdk/view/BEFView$FitMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Lcom/bef/effectsdk/ResourceFinder;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/effectsdk/ResourceFinder;

    return-object p0
.end method

.method static synthetic access$502(Lcom/bef/effectsdk/view/BEFView$Builder$Params;Lcom/bef/effectsdk/ResourceFinder;)Lcom/bef/effectsdk/ResourceFinder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mResourceFinder:Lcom/bef/effectsdk/ResourceFinder;

    return-object p1
.end method

.method static synthetic access$600(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;
    .locals 0

    .line 148
    iget-object p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mSceneKey:Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;

    return-object p0
.end method

.method static synthetic access$602(Lcom/bef/effectsdk/view/BEFView$Builder$Params;Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;)Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mSceneKey:Lcom/bef/effectsdk/view/BEFView$BEFViewSceneKey;

    return-object p1
.end method

.method static synthetic access$700(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mNeglectTouchEvent:Z

    return p0
.end method

.method static synthetic access$702(Lcom/bef/effectsdk/view/BEFView$Builder$Params;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mNeglectTouchEvent:Z

    return p1
.end method

.method static synthetic access$800(Lcom/bef/effectsdk/view/BEFView$Builder$Params;)Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mKeepStatusAtPause:Z

    return p0
.end method

.method static synthetic access$802(Lcom/bef/effectsdk/view/BEFView$Builder$Params;Z)Z
    .locals 0

    .line 148
    iput-boolean p1, p0, Lcom/bef/effectsdk/view/BEFView$Builder$Params;->mKeepStatusAtPause:Z

    return p1
.end method
