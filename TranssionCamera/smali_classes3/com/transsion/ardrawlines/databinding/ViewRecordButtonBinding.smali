.class public final Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;
.super Ljava/lang/Object;
.source "ViewRecordButtonBinding.java"


# instance fields
.field public final circleBackground:Landroid/widget/ImageView;

.field public final progress:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

.field public final redDot:Landroid/widget/ImageView;

.field public final redSquare:Landroid/widget/ImageView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->rootView:Landroid/view/View;

    .line 37
    iput-object p2, p0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->circleBackground:Landroid/widget/ImageView;

    .line 38
    iput-object p3, p0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->progress:Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    .line 39
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->redDot:Landroid/widget/ImageView;

    .line 40
    iput-object p5, p0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->redSquare:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;
    .locals 8

    .line 65
    sget v0, Lcom/transsion/ardrawlines/R$id;->circle_background:I

    .line 66
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 71
    sget v0, Lcom/transsion/ardrawlines/R$id;->progress:I

    .line 72
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;

    if-eqz v5, :cond_0

    .line 77
    sget v0, Lcom/transsion/ardrawlines/R$id;->red_dot:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    .line 83
    sget v0, Lcom/transsion/ardrawlines/R$id;->red_square:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 89
    new-instance v0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;Lcom/transsion/ardrawlines/view/RecordButtonProgressBar;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 92
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;
    .locals 1

    if-eqz p1, :cond_0

    .line 55
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_record_button:I

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    invoke-static {p1}, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;

    move-result-object p0

    return-object p0

    .line 53
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewRecordButtonBinding;->rootView:Landroid/view/View;

    return-object p0
.end method
