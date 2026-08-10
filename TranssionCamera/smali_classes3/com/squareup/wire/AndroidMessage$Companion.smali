.class public final Lcom/squareup/wire/AndroidMessage$Companion;
.super Ljava/lang/Object;
.source "AndroidMessage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/AndroidMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/AndroidMessage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newCreator(Lcom/squareup/wire/ProtoAdapter;)Landroid/os/Parcelable$Creator;
    .locals 0
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TE;>;)",
            "Landroid/os/Parcelable$Creator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "adapter"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    new-instance p0, Lcom/squareup/wire/AndroidMessage$ProtoAdapterCreator;

    invoke-direct {p0, p1}, Lcom/squareup/wire/AndroidMessage$ProtoAdapterCreator;-><init>(Lcom/squareup/wire/ProtoAdapter;)V

    return-object p0
.end method
