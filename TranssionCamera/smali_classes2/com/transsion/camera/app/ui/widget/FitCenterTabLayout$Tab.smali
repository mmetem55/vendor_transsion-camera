.class public final Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;
.super Ljava/lang/Object;
.source "FitCenterTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsShowSellingPoint:Ljava/lang/Boolean;

.field mParent:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 817
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mPosition:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIsShowSellingPoint()Z
    .locals 0

    .line 881
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPosition()I
    .locals 0

    .line 863
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mPosition:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 877
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1041
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    return-object p0
.end method

.method public isSelected()Z
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    if-eqz v0, :cond_1

    .line 980
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mPosition:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 978
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1045
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    .line 1046
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    .line 1047
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1048
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1049
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1050
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1051
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mPosition:I

    return-void
.end method

.method select(Z)V
    .locals 1

    .line 967
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    if-eqz v0, :cond_0

    .line 970
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->access$000(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;Z)V

    return-void

    .line 968
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;
    .locals 0

    .line 1011
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    .line 1012
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    .line 867
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mPosition:I

    return-void
.end method

.method public setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;
    .locals 0

    .line 938
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    .line 939
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;
    .locals 0

    .line 926
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 927
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public updateView()V
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;

    if-eqz p0, :cond_0

    .line 1036
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
