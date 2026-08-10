.class public abstract Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ViewMultimediaBinding.java"


# instance fields
.field public final bubbleInfo:Landroid/widget/TextView;

.field public final bubbleTriangle:Landroid/widget/ImageView;

.field public final cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

.field public final checkBox:Landroid/widget/CheckBox;

.field public final gallery:Landroid/widget/ImageButton;

.field public final linkToVideoResource:Landroid/widget/ImageButton;

.field public final recordButton:Lcom/transsion/ardrawlines/view/RecordButton;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/ImageView;Lcom/transsion/ardrawlines/view/CameraModelSelectView;Landroid/widget/CheckBox;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Lcom/transsion/ardrawlines/view/RecordButton;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 48
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bubbleInfo:Landroid/widget/TextView;

    .line 49
    iput-object p5, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bubbleTriangle:Landroid/widget/ImageView;

    .line 50
    iput-object p6, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->cameraModelSelectView:Lcom/transsion/ardrawlines/view/CameraModelSelectView;

    .line 51
    iput-object p7, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->checkBox:Landroid/widget/CheckBox;

    .line 52
    iput-object p8, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->gallery:Landroid/widget/ImageButton;

    .line 53
    iput-object p9, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->linkToVideoResource:Landroid/widget/ImageButton;

    .line 54
    iput-object p10, p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->recordButton:Lcom/transsion/ardrawlines/view/RecordButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
    .locals 1

    .line 97
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_multimedia:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
    .locals 1

    .line 79
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
    .locals 1

    .line 60
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_multimedia:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    sget v0, Lcom/transsion/ardrawlines/R$layout;->view_multimedia:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ViewMultimediaBinding;

    return-object p0
.end method
