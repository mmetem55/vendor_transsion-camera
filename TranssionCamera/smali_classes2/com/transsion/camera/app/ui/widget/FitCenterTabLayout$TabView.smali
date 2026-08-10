.class Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "FitCenterTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabView"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;Landroid/content/Context;)V
    .locals 2

    .line 1060
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    .line 1061
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1066
    iget p2, p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabPaddingStart:I

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabPaddingTop:I

    iget v1, p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabPaddingEnd:I

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->mTabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, p1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    .line 1068
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 1069
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1070
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1072
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 1071
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 1166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1167
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1169
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1170
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    .line 1172
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1173
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1174
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1176
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1177
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1179
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1182
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->getIsShowSellingPoint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1183
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1184
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0807b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1186
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1188
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1125
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1127
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1132
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1134
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performClick()Z
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1078
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1079
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    .line 1080
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 1081
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1082
    div-int/lit8 v4, v3, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_0

    aget v7, v1, v5

    .line 1083
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-lt v7, v4, :cond_1

    :cond_0
    if-ne v2, v6, :cond_2

    aget v1, v1, v5

    .line 1084
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    add-int/2addr v1, v2

    sub-int/2addr v3, v4

    if-le v1, v3, :cond_2

    :cond_1
    return v6

    .line 1087
    :cond_2
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1089
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    .line 1091
    invoke-virtual {p0, v5}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 1093
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    invoke-virtual {p0, v6}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->select(Z)V

    return v6

    :cond_4
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->setTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V

    const/4 v0, 0x0

    .line 1146
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1102
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1106
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1107
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p1, :cond_0

    .line 1112
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0603ce

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1118
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method setTab(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;)V
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1139
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    .line 1140
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 4

    .line 1150
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;

    .line 1152
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->access$100(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;)I

    move-result v1

    if-lez v1, :cond_0

    .line 1153
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;

    .line 1154
    invoke-static {v3}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;->access$100(Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout;)I

    move-result v3

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1155
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0904d8

    .line 1156
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f090233

    .line 1157
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->updateUI()V

    if-eqz v0, :cond_1

    .line 1162
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/FitCenterTabLayout$TabView;->setSelected(Z)V

    return-void
.end method
