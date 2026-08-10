.class final Lcom/squareup/wire/internal/FieldBinding$getInstanceGetter$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FieldBinding.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/wire/internal/FieldBinding;->getInstanceGetter(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "TM;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/squareup/wire/internal/FieldBinding;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/internal/FieldBinding<",
            "TM;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/squareup/wire/internal/FieldBinding;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/internal/FieldBinding<",
            "TM;TB;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/squareup/wire/internal/FieldBinding$getInstanceGetter$2;->this$0:Lcom/squareup/wire/internal/FieldBinding;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/squareup/wire/Message;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/squareup/wire/Message;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "instance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object p0, p0, Lcom/squareup/wire/internal/FieldBinding$getInstanceGetter$2;->this$0:Lcom/squareup/wire/internal/FieldBinding;

    invoke-static {p0}, Lcom/squareup/wire/internal/FieldBinding;->access$getMessageField$p(Lcom/squareup/wire/internal/FieldBinding;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 117
    check-cast p1, Lcom/squareup/wire/Message;

    invoke-virtual {p0, p1}, Lcom/squareup/wire/internal/FieldBinding$getInstanceGetter$2;->invoke(Lcom/squareup/wire/Message;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
