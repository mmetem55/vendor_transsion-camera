.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iput-boolean p2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iput-object p3, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    iput p4, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$3:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;

    iget-boolean v1, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$1:Z

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$2:Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    iget p0, p0, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter$$ExternalSyntheticLambda0;->f$3:I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;->$r8$lambda$cmWKg7nqieAEmsHgEKh9-By3rsM(Lcom/transsion/camera/feature/mode/makeup/adapter/EffectButtonRVAdapter;ZLcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;ILandroid/view/View;)V

    return-void
.end method
