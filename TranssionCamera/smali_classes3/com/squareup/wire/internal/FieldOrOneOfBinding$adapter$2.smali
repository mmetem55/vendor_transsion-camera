.class final Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FieldOrOneOfBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/internal/FieldOrOneOfBinding;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/squareup/wire/ProtoAdapter<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/wire/internal/FieldOrOneOfBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/FieldOrOneOfBinding<",
            "TM;TB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/squareup/wire/ProtoAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/squareup/wire/ProtoAdapter<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    invoke-virtual {v0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->isMap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/squareup/wire/ProtoAdapter;->Companion:Lcom/squareup/wire/ProtoAdapter$Companion;

    .line 63
    iget-object v1, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    invoke-virtual {v1}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getKeyAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v1

    .line 64
    iget-object p0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    .line 62
    invoke-virtual {v0, v1, p0}, Lcom/squareup/wire/ProtoAdapter$Companion;->newMapAdapter(Lcom/squareup/wire/ProtoAdapter;Lcom/squareup/wire/ProtoAdapter;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    invoke-virtual {v0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getSingleAdapter()Lcom/squareup/wire/ProtoAdapter;

    move-result-object v0

    iget-object p0, p0, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->this$0:Lcom/squareup/wire/internal/FieldOrOneOfBinding;

    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding;->getLabel()Lcom/squareup/wire/WireField$Label;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/squareup/wire/ProtoAdapter;->withLabel$wire_runtime(Lcom/squareup/wire/WireField$Label;)Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/squareup/wire/internal/FieldOrOneOfBinding$adapter$2;->invoke()Lcom/squareup/wire/ProtoAdapter;

    move-result-object p0

    return-object p0
.end method
