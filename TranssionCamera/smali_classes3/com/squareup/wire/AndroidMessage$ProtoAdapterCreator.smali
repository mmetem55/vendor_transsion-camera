.class final Lcom/squareup/wire/AndroidMessage$ProtoAdapterCreator;
.super Ljava/lang/Object;
.source "AndroidMessage.kt"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/wire/AndroidMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapterCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "TM;>;"
    }
.end annotation


# instance fields
.field private final adapter:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/squareup/wire/ProtoAdapter;)V
    .locals 1
    .param p1    # Lcom/squareup/wire/ProtoAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/squareup/wire/ProtoAdapter<",
            "TM;>;)V"
        }
    .end annotation

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/squareup/wire/AndroidMessage$ProtoAdapterCreator;->adapter:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TM;"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object p0, p0, Lcom/squareup/wire/AndroidMessage$ProtoAdapterCreator;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    const-string v0, "input.createByteArray()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/squareup/wire/ProtoAdapter;->decode([B)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TM;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 41
    iget-object p0, p0, Lcom/squareup/wire/AndroidMessage$ProtoAdapterCreator;->adapter:Lcom/squareup/wire/ProtoAdapter;

    invoke-virtual {p0}, Lcom/squareup/wire/ProtoAdapter;->getType()Lkotlin/reflect/KClass;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getJavaObjectType(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type kotlin.Array<M of com.squareup.wire.AndroidMessage.ProtoAdapterCreator>"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
