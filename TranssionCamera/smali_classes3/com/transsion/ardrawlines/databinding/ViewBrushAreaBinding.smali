.class public final Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;
.super Ljava/lang/Object;
.source "ViewBrushAreaBinding.java"


# instance fields
.field public final brushColorSelectors:Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;

.field public final brushColorView:Landroid/widget/HorizontalScrollView;

.field public final brushHintView:Lcom/transsion/ardrawlines/view/CircleView;

.field public final brushLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final brushSeekBar:Landroid/widget/SeekBar;

.field public final brushTypeSelectors:Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

.field public final brushTypeView:Landroid/widget/HorizontalScrollView;

.field public final paintingOperationArea:Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;Landroid/widget/HorizontalScrollView;Lcom/transsion/ardrawlines/view/CircleView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/SeekBar;Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;Landroid/widget/HorizontalScrollView;Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 56
    iput-object p2, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorSelectors:Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;

    .line 57
    iput-object p3, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushColorView:Landroid/widget/HorizontalScrollView;

    .line 58
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushHintView:Lcom/transsion/ardrawlines/view/CircleView;

    .line 59
    iput-object p5, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 60
    iput-object p6, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushSeekBar:Landroid/widget/SeekBar;

    .line 61
    iput-object p7, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushTypeSelectors:Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

    .line 62
    iput-object p8, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->brushTypeView:Landroid/widget/HorizontalScrollView;

    .line 63
    iput-object p9, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->paintingOperationArea:Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;
    .locals 12

    .line 93
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_color_selectors:I

    .line 94
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 98
    invoke-static {v1}, Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;

    move-result-object v4

    .line 100
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_color_view:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/HorizontalScrollView;

    if-eqz v5, :cond_0

    .line 106
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_hint_view:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/transsion/ardrawlines/view/CircleView;

    if-eqz v6, :cond_0

    .line 112
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_layout:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    .line 118
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_seekBar:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/SeekBar;

    if-eqz v8, :cond_0

    .line 124
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_type_selectors:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 129
    invoke-static {v1}, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

    move-result-object v9

    .line 131
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_type_view:I

    .line 132
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/HorizontalScrollView;

    if-eqz v10, :cond_0

    .line 137
    sget v0, Lcom/transsion/ardrawlines/R$id;->painting_operation_area:I

    .line 138
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    invoke-static {v1}, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    move-result-object v11

    .line 144
    new-instance v0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/transsion/ardrawlines/databinding/ViewBrushColorSelectorsBinding;Landroid/widget/HorizontalScrollView;Lcom/transsion/ardrawlines/view/CircleView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/SeekBar;Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;Landroid/widget/HorizontalScrollView;Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;)V

    return-object v0

    .line 148
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;
    .locals 2

    .line 80
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_brush_area:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushAreaBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
