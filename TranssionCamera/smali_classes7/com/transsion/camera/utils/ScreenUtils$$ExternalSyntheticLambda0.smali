.class public final synthetic Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput p2, p0, Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget p0, p0, Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;->f$1:F

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ScreenUtils;->$r8$lambda$CU3pGjWdDkT938XKSihO765jBZM(Landroid/app/Activity;F)V

    return-void
.end method
