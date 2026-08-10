.class public Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
.super Ljava/lang/Object;
.source "OSWideSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSSectionSeekBarBuilder"
.end annotation


# instance fields
.field max:F

.field min:F

.field private osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;",
            ">;"
        }
    .end annotation
.end field

.field progress:F

.field secondTrackColor:I

.field secondTrackWidth:I

.field trackColor:I

.field trackWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)V
    .locals 2

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 448
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 449
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 450
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->max:F

    .line 451
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->progress:F

    const/16 v0, 0xa

    .line 452
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->trackWidth:I

    .line 453
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->secondTrackWidth:I

    .line 454
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->access$400(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    .line 455
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->access$500(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public build()V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;)V

    :cond_0
    return-void
.end method

.method public max(F)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 471
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->max:F

    return-object p0
.end method

.method public min(F)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 465
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->min:F

    .line 466
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public progress(F)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 476
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public secondTrackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 496
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    return-object p0
.end method

.method public secondTrackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 486
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->secondTrackWidth:I

    return-object p0
.end method

.method public trackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 491
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    return-object p0
.end method

.method public trackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 481
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSWideSeekbar$OSSectionSeekBarBuilder;->trackWidth:I

    return-object p0
.end method
