.class Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$1;
.super Ljava/lang/Object;
.source "FacemojiFragment.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment$1;->this$0:Lcom/transsion/camera/feature/arcore/common/fragments/FacemojiFragment;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/arcore/common/fragments/CommonFragment;->handleSwitchEmoji()V

    return-void
.end method
