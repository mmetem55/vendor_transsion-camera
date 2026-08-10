.class public Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
.super Ljava/lang/Object;
.source "OSSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSSeekBarBuilder"
.end annotation


# instance fields
.field max:F

.field min:F

.field private osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;",
            ">;"
        }
    .end annotation
.end field

.field progress:F

.field secondTrackColor:I

.field secondTrackWidth:I

.field thumbInMaxScal:F

.field thumbInMaxWidth:I

.field thumbInWidth:I

.field thumbInsideColor:I

.field thumbOutColor:I

.field thumbOutMaxScal:F

.field thumbOutWidth:I

.field trackColor:I

.field trackWidth:I


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)V
    .locals 2

    .line 910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 912
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    .line 913
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    const/high16 v1, 0x42c80000    # 100.0f

    .line 914
    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    .line 915
    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    const/4 v0, 0x3

    .line 916
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v1

    iput v1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    .line 917
    invoke-static {v0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    .line 918
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1500(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$color;->os_gray_tertiary_color:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    .line 919
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1600(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    .line 920
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1700(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)I

    move-result v0

    iput v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutColor:I

    .line 921
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->access$1500(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;)Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/transsion/widgetslib/R$color;->os_seekbar_thumbinside_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInsideColor:I

    const/16 p1, 0x8

    .line 922
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    const/16 p1, 0xe

    .line 923
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    const/16 p1, 0x14

    .line 924
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    const/high16 p1, 0x3fa00000    # 1.25f

    .line 925
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    const p1, 0x3f924923

    .line 926
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    :cond_0
    return-void
.end method


# virtual methods
.method public build()V
    .locals 1

    .line 931
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->osSectionSeekbarWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;

    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->config(Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;)V

    :cond_0
    return-void
.end method

.method public max(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 942
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->max:F

    return-object p0
.end method

.method public min(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 936
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->min:F

    .line 937
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public progress(F)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 947
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->progress:F

    return-object p0
.end method

.method public secondTrackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 967
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackColor:I

    return-object p0
.end method

.method public secondTrackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 957
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->secondTrackWidth:I

    return-object p0
.end method

.method public thumbInMaxScal(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    int-to-float p1, p1

    .line 987
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxScal:F

    return-object p0
.end method

.method public thumbInMaxWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 982
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInMaxWidth:I

    return-object p0
.end method

.method public thumbInWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 972
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbInWidth:I

    return-object p0
.end method

.method public thumbOutMaxScal(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    int-to-float p1, p1

    .line 992
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutMaxScal:F

    return-object p0
.end method

.method public thumbOutWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 977
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->thumbOutWidth:I

    return-object p0
.end method

.method public trackColor(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 962
    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackColor:I

    return-object p0
.end method

.method public trackWidth(I)Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;
    .locals 0

    .line 952
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar;->dp2px(I)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/widget/seekbar/OSSeekbar$OSSeekBarBuilder;->trackWidth:I

    return-object p0
.end method
