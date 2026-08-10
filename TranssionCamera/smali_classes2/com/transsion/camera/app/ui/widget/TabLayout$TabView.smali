.class public Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabView"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field private mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/ui/widget/TabLayout;Landroid/content/Context;)V
    .locals 2

    .line 1176
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    .line 1177
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1182
    iget p2, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingStart:I

    iget v0, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingTop:I

    iget v1, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingEnd:I

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabPaddingBottom:I

    invoke-static {p0, p2, v0, v1, p1}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    const/16 p1, 0x11

    .line 1184
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/4 p1, 0x1

    .line 1185
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1186
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1188
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/view/PointerIconCompat;->getSystemIcon(Landroid/content/Context;I)Landroidx/core/view/PointerIconCompat;

    move-result-object p1

    .line 1187
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setPointerIcon(Landroid/view/View;Landroidx/core/view/PointerIconCompat;)V

    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 1298
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1299
    :goto_0
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 1301
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1302
    iget-object v4, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    .line 1304
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1305
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1306
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1308
    :cond_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1309
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1311
    :goto_2
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1314
    :cond_3
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->getIsShowSellingPoint()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1315
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1316
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f0807b5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1318
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1320
    :cond_5
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    return-void
.end method


# virtual methods
.method public initTabNormalTextColor()V
    .locals 2

    .line 1208
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout;->access$100(Lcom/transsion/camera/app/ui/widget/TabLayout;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget v1, v1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabTextAppearance:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 1210
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1212
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabTextAppearance:I

    invoke-static {v0, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    :goto_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1235
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1237
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1242
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1249
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1250
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1251
    iget-object v2, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    invoke-virtual {v2}, Lcom/transsion/camera/app/ui/widget/TabLayout;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 1259
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget p1, p1, Lcom/transsion/camera/app/ui/widget/TabLayout;->mTabMaxWidth:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1266
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 1194
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 1196
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1198
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->playSoundEffect(I)V

    .line 1200
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->select(Z)V

    :cond_1
    return v0
.end method

.method reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1277
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V

    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 4

    .line 1218
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1222
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1223
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1224
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/high16 v1, 0x40800000    # 4.0f

    const-string v2, "#33000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    if-eqz p1, :cond_0

    .line 1226
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->this$0:Lcom/transsion/camera/app/ui/widget/TabLayout;

    iget p0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout;->mSelectedTabTextAppearance:I

    invoke-static {p1, p0}, Landroidx/core/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->initTabNormalTextColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method setTab(Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;)V
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    if-eq p1, v0, :cond_0

    .line 1271
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 1272
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method

.method final update()V
    .locals 4

    .line 1282
    iget-object v0, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTab:Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;

    .line 1284
    iget-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1285
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0c00fc

    .line 1286
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1287
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v3, 0x7f0904d8

    .line 1288
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mTextView:Landroid/widget/TextView;

    const v3, 0x7f090233

    .line 1289
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->mImageView:Landroid/widget/ImageView;

    .line 1292
    :cond_0
    invoke-direct {p0}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->updateUI()V

    if-eqz v0, :cond_1

    .line 1294
    invoke-virtual {v0}, Lcom/transsion/camera/app/ui/widget/TabLayout$Tab;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/transsion/camera/app/ui/widget/TabLayout$TabView;->setSelected(Z)V

    return-void
.end method
