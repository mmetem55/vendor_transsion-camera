.class public abstract Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "ScreenOffLayoutBinding.java"


# instance fields
.field public final btnScreenOnId:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 23
    iput-object p4, p0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;->btnScreenOnId:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
    .locals 1

    .line 66
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 78
    sget v0, Lcom/transsion/ardrawlines/R$layout;->screen_off_layout:I

    invoke-static {p1, p0, v0}, Landroidx/databinding/ViewDataBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
    .locals 1

    .line 48
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
    .locals 1

    .line 29
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    sget v0, Lcom/transsion/ardrawlines/R$layout;->screen_off_layout:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    sget v0, Lcom/transsion/ardrawlines/R$layout;->screen_off_layout:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/transsion/ardrawlines/databinding/ScreenOffLayoutBinding;

    return-object p0
.end method
