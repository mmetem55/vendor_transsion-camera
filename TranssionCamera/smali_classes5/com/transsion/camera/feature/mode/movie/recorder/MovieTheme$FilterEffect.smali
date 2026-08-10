.class Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;
.super Ljava/lang/Object;
.source "MovieTheme.java"

# interfaces
.implements Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$IFilterEffect;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterEffect"
.end annotation


# instance fields
.field private mEffect:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mEffectHeight:I

.field private mEffectWidth:I

.field private final mFilterId:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;Ljava/lang/String;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mFilterId:Ljava/lang/String;

    return-void
.end method

.method private createFilterEffect(II)V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mFilterId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 537
    iput p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectWidth:I

    .line 538
    iput p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectHeight:I

    .line 539
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object p1

    iget p2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectWidth:I

    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectHeight:I

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mFilterId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->createEffect(IILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    .line 540
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createVideoEffect for theme:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " result:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sameSize(II)Z
    .locals 1

    .line 545
    iget v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectWidth:I

    if-ne v0, p1, :cond_0

    iget p0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectHeight:I

    if-ne p0, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clearFilterEffect()V
    .locals 3

    .line 525
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearEffectResource start theme:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1300(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/feature/mode/movie/data/ThemeConfig;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mEffect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->clearEffect(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 529
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectWidth:I

    .line 530
    iput v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffectHeight:I

    .line 532
    :cond_0
    invoke-static {}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "clearEffectResource end "

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method public render(IIIIJ)I
    .locals 9

    .line 506
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->this$0:Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;

    invoke-static {v0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;->access$1100(Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme;)Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->mEffect:Ljava/lang/Object;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-wide v7, p5

    invoke-interface/range {v1 .. v8}, Lcom/transsion/camera/feature/mode/movie/algorithm/IRecorderRender;->renderEffect(Ljava/lang/Object;IIIIJ)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x4

    :goto_0
    return p0
.end method

.method public updateFilterEffect(II)V
    .locals 1

    .line 517
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->sameSize(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->clearFilterEffect()V

    .line 520
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/movie/recorder/MovieTheme$FilterEffect;->createFilterEffect(II)V

    return-void
.end method
