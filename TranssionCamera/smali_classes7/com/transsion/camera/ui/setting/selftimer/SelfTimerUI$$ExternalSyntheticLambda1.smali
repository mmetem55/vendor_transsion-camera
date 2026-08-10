.class public final synthetic Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/utils/sound/IActionSound$SoundLoadCompleteCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onLoadComplete()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Runnable;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/selftimer/SelfTimerUI;->$r8$lambda$8R4CnAI7clI1LmyBvpbm481qTh4(Ljava/lang/Runnable;)V

    return-void
.end method
