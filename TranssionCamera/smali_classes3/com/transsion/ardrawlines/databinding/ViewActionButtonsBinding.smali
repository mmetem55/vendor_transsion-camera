.class public final Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;
.super Ljava/lang/Object;
.source "ViewActionButtonsBinding.java"


# instance fields
.field public final buttonClean:Landroid/widget/Button;

.field public final buttonSound:Landroid/widget/ImageView;

.field public final redo:Landroid/widget/Button;

.field public final revokeArea:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final undo:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    iput-object p2, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->buttonClean:Landroid/widget/Button;

    .line 44
    iput-object p3, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->buttonSound:Landroid/widget/ImageView;

    .line 45
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->redo:Landroid/widget/Button;

    .line 46
    iput-object p5, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->revokeArea:Landroid/widget/LinearLayout;

    .line 47
    iput-object p6, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->undo:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;
    .locals 9

    .line 77
    sget v0, Lcom/transsion/ardrawlines/R$id;->button_clean:I

    .line 78
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 83
    sget v0, Lcom/transsion/ardrawlines/R$id;->button_sound:I

    .line 84
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 89
    sget v0, Lcom/transsion/ardrawlines/R$id;->redo:I

    .line 90
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_0

    .line 95
    sget v0, Lcom/transsion/ardrawlines/R$id;->revoke_area:I

    .line 96
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_0

    .line 101
    sget v0, Lcom/transsion/ardrawlines/R$id;->undo:I

    .line 102
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 107
    new-instance v0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/Button;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    return-object v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 111
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 58
    invoke-static {p0, v0, v1}, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;
    .locals 2

    .line 64
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_action_buttons:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 66
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/transsion/ardrawlines/databinding/ViewActionButtonsBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
