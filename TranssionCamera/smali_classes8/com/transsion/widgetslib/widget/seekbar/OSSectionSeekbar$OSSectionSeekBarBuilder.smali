.class public Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
.super Ljava/lang/Object;
.source "OSSectionSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSSectionSeekBarBuilder"
.end annotation


# instance fields
.field displayCharacters:Z

.field dotsColor:I

.field dotsSize:I

.field floatType:Z

.field max:F

.field min:F

.field private osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;",
            ">;"
        }
    .end annotation
.end field

.field processMarginTopBottow:I

.field progress:F

.field secondTrackColor:I

.field secondTrackSize:I

.field sectionCount:I

.field sectionTextColor:I

.field sectionTextInterval:I

.field sectionTextSize:I

.field textBottomMargin:I

.field textTopMargin:I

.field thumbInWidth:I

.field thumbInsideColor:I

.field thumbOutColor:I

.field thumbOutWidth:I

.field trackColor:I

.field trackSize:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)V
    .locals 3

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 628
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 629
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 630
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    .line 631
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    const/4 v0, 0x3

    .line 632
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    .line 633
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    const/16 v1, 0xc

    .line 634
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->sp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    const/4 v1, 0x6

    .line 635
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    .line 636
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v2

    iput v2, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    .line 637
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    const/16 v0, 0x8

    .line 638
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    const/16 v0, 0xe

    .line 639
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    .line 640
    invoke-static {v1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    const/4 v0, 0x5

    .line 641
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    const/4 v0, 0x0

    .line 642
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    const/4 v0, 0x1

    .line 643
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    .line 644
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$000(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    .line 645
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$100(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    .line 647
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$200(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    .line 649
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$000(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_altitude_secondary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    .line 650
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$000(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    .line 651
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->access$000(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$color;->os_fill_solid_tertiary_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    :cond_0
    return-void
.end method


# virtual methods
.method public build()V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;)V

    :cond_0
    return-void
.end method

.method public displayCharacters(Z)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->displayCharacters:Z

    return-object p0
.end method

.method public dotsColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 728
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsColor:I

    return-object p0
.end method

.method public dotsSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 703
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->dotsSize:I

    return-object p0
.end method

.method public floatType()Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 678
    iput-boolean v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->floatType:Z

    return-object p0
.end method

.method public max(F)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 668
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->max:F

    return-object p0
.end method

.method public min(F)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 662
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->min:F

    .line 663
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public processMarginTopBottow(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 718
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->processMarginTopBottow:I

    return-object p0
.end method

.method public progress(F)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 673
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public secondTrackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 733
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackColor:I

    return-object p0
.end method

.method public secondTrackSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 688
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->secondTrackSize:I

    return-object p0
.end method

.method public sectionCount(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 748
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionCount:I

    return-object p0
.end method

.method public sectionTextColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 763
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextColor:I

    return-object p0
.end method

.method public sectionTextInterval(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 768
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextInterval:I

    return-object p0
.end method

.method public sectionTextSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 758
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->sp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->sectionTextSize:I

    return-object p0
.end method

.method public textBottomMargin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 713
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textBottomMargin:I

    return-object p0
.end method

.method public textTopMargin(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 708
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->textTopMargin:I

    return-object p0
.end method

.method public thumbInWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 693
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInWidth:I

    return-object p0
.end method

.method public thumbInsideColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 743
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbInsideColor:I

    return-object p0
.end method

.method public thumbOutColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 738
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutColor:I

    return-object p0
.end method

.method public thumbOutWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 698
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->thumbOutWidth:I

    return-object p0
.end method

.method public trackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 723
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackColor:I

    return-object p0
.end method

.method public trackSize(I)Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;
    .locals 0

    .line 683
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSectionSeekbar$OSSectionSeekBarBuilder;->trackSize:I

    return-object p0
.end method
