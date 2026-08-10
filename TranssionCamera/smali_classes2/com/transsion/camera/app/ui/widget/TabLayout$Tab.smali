.class public final Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Tab"
.end annotation


# instance fields
.field private mContentDesc:Ljava/lang/CharSequence;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsShowSellingPoint:Ljava/lang/Boolean;

.field mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 928
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 922
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    const/4 v0, -0x1

    .line 923
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method


# virtual methods
.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 1137
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 959
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIsShowSellingPoint()Z
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getPosition()I
    .locals 0

    .line 969
    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isSelected()Z
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_1

    .line 1086
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1084
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1147
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 1148
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    .line 1149
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mTag:Ljava/lang/Object;

    .line 1150
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1151
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    .line 1152
    iput-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    const/4 v0, -0x1

    .line 1153
    iput v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method

.method select(Z)V
    .locals 1

    .line 1073
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mParent:Lcom/transsion/camera/app/ui/widget/TabLayout;

    if-eqz v0, :cond_0

    .line 1076
    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/widget/TabLayout;->access$000(Lcom/transsion/camera/app/ui/widget/TabLayout;Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;Z)V

    return-void

    .line 1074
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescriptionWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mContentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    .line 973
    iput p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mPosition:I

    return-void
.end method

.method public setShowPointIcon(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .locals 0

    .line 1044
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    .line 1045
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setShowPointIconWithoutUpdate(Z)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .locals 0

    .line 1050
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mIsShowSellingPoint:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setTextWithoutUpdate(Ljava/lang/CharSequence;)Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;
    .locals 0

    .line 1039
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public updateView()V
    .locals 0

    .line 1141
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->mView:Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;

    if-eqz p0, :cond_0

    .line 1142
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
