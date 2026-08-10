.class public Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
.super Ljava/lang/Object;
.source "OSMultiSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSMultiSeekBarBuilde"
.end annotation


# instance fields
.field max:F

.field min:F

.field private osMultiSeekbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;",
            ">;"
        }
    .end annotation
.end field

.field processMarginTopBottow:I

.field progress:F

.field secondTrackColor:I

.field secondTrackWidth:I

.field thumbColor:I

.field thumbWidth:I

.field trackColor:I

.field trackWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)V
    .locals 3

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 418
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->osMultiSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 419
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 420
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->max:F

    .line 421
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->progress:F

    const/4 v0, 0x3

    .line 422
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackWidth:I

    .line 423
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackWidth:I

    const/16 v0, 0x8

    .line 424
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->processMarginTopBottow:I

    .line 425
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->access$000(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$color;->os_gray_primary_color:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackColor:I

    .line 426
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->access$100(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackColor:I

    .line 427
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbWidth:I

    .line 428
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->access$200(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public build()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->osMultiSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->osMultiSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;)V

    :cond_0
    return-void
.end method

.method public max(F)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 444
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->max:F

    return-object p0
.end method

.method public min(F)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 438
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->min:F

    .line 439
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->progress:F

    return-object p0
.end method

.method public processMarginTopBottow(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 484
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->processMarginTopBottow:I

    return-object p0
.end method

.method public progress(F)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 449
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->progress:F

    return-object p0
.end method

.method public secondTrackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 474
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackColor:I

    return-object p0
.end method

.method public secondTrackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 459
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->secondTrackWidth:I

    return-object p0
.end method

.method public thumbColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 479
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbColor:I

    return-object p0
.end method

.method public thumbWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 464
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->thumbWidth:I

    return-object p0
.end method

.method public trackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 469
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackColor:I

    return-object p0
.end method

.method public trackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;
    .locals 0

    .line 454
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSMultiSeekBar$OSMultiSeekBarBuilde;->trackWidth:I

    return-object p0
.end method
