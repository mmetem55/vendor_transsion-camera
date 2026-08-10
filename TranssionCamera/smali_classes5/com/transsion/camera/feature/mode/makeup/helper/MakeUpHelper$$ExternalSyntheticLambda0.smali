.class public final synthetic Lcom/transsion/camera/feature/mode/makeup/helper/MakeUpHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/makeup/data/EffectButtonItem;->intensityDefault()Z

    move-result p0

    return p0
.end method
