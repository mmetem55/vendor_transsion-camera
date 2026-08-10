.class Lcom/transsion/widgetslib/util/OSTouchBgHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "OSTouchBgHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/util/OSTouchBgHelper;->playTouchAnim(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/util/OSTouchBgHelper;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/util/OSTouchBgHelper;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper$1;->this$0:Lcom/transsion/widgetslib/util/OSTouchBgHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 150
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 151
    iget-object p1, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper$1;->this$0:Lcom/transsion/widgetslib/util/OSTouchBgHelper;

    invoke-static {p1}, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->access$000(Lcom/transsion/widgetslib/util/OSTouchBgHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 152
    iget-object p0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper$1;->this$0:Lcom/transsion/widgetslib/util/OSTouchBgHelper;

    iput-boolean v0, p0, Lcom/transsion/widgetslib/util/OSTouchBgHelper;->mNewPageBackThenExecAnim:Z

    return-void
.end method
