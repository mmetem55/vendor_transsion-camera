.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private labelVisibilityMode:I
    .annotation build Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;
    .end annotation
.end field

.field public parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private position:I

.field private tag:Ljava/lang/Object;

.field private text:Ljava/lang/CharSequence;

.field public view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1859
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    const/4 v0, 0x1

    .line 1862
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    .line 1839
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    .line 1839
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)I
    .locals 0

    .line 1839
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method


# virtual methods
.method public getBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    .line 2076
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$700(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 2184
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 0

    .line 1905
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1951
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getOrCreateBadge()Lcom/google/android/material/badge/BadgeDrawable;
    .locals 0

    .line 2059
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$500(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 1961
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    return p0
.end method

.method public getTabLabelVisibility()I
    .locals 0
    .annotation build Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;
    .end annotation

    .line 2117
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 0

    .line 1882
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 1975
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isSelected()Z
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_1

    .line 2137
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 2135
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeBadge()V
    .locals 0

    .line 2067
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$600(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)V

    return-void
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 2194
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 2195
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2196
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->tag:Ljava/lang/Object;

    .line 2197
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 2198
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 2199
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 2200
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    .line 2201
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .locals 1

    .line 2124
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_0

    .line 2127
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void

    .line 2125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 2151
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_0

    .line 2154
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0

    .line 2152
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 2168
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 2169
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 3

    .line 1940
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1941
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 1921
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1922
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_0

    .line 2013
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0

    .line 2009
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 3

    .line 1986
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1987
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 1988
    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    .line 1990
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    .line 1991
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1992
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1993
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1995
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    .line 1965
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    return-void
.end method

.method public setTabLabelVisibility(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 3
    .param p1    # I
        .annotation build Lcom/transsion/widgetslib/widget/tablayout/TabLayout$LabelVisibility;
        .end annotation
    .end param

    .line 2094
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    .line 2095
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2096
    :cond_0
    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    .line 2098
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    .line 2099
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2100
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2101
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2103
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 1893
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public setText(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 2045
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_0

    .line 2048
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    move-result-object p0

    return-object p0

    .line 2046
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab not attached to a TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 2025
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2028
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2031
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 2032
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .locals 0

    .line 2188
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz p0, :cond_0

    .line 2189
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
