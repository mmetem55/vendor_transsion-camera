.class public final Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;
.super Ljava/lang/Object;
.source "ViewBrushTypeSelectorsBinding.java"


# instance fields
.field public final brushTypeGroup:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/transsion/ardrawlines/view/FlowRadioGroup;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->rootView:Landroid/widget/LinearLayout;

    .line 28
    iput-object p2, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->brushTypeGroup:Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;
    .locals 2

    .line 58
    sget v0, Lcom/transsion/ardrawlines/R$id;->brush_type_group:I

    .line 59
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/ardrawlines/view/FlowRadioGroup;

    if-eqz v1, :cond_0

    .line 64
    new-instance v0, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0, v1}, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;-><init>(Landroid/widget/LinearLayout;Lcom/transsion/ardrawlines/view/FlowRadioGroup;)V

    return-object v0

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 39
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;
    .locals 2

    .line 45
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_brush_type_selectors:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewBrushTypeSelectorsBinding;->rootView:Landroid/widget/LinearLayout;

    return-object p0
.end method
