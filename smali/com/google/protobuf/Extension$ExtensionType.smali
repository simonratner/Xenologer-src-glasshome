.class public final enum Lcom/google/protobuf/Extension$ExtensionType;
.super Ljava/lang/Enum;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ExtensionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/Extension$ExtensionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/protobuf/Extension$ExtensionType;

.field public static final enum IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

.field public static final enum MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

.field public static final enum PROTO1:Lcom/google/protobuf/Extension$ExtensionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/google/protobuf/Extension$ExtensionType;

    const-string v1, "IMMUTABLE"

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    .line 39
    new-instance v0, Lcom/google/protobuf/Extension$ExtensionType;

    const-string v1, "MUTABLE"

    invoke-direct {v0, v1, v3}, Lcom/google/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    .line 40
    new-instance v0, Lcom/google/protobuf/Extension$ExtensionType;

    const-string v1, "PROTO1"

    invoke-direct {v0, v1, v4}, Lcom/google/protobuf/Extension$ExtensionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->PROTO1:Lcom/google/protobuf/Extension$ExtensionType;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/protobuf/Extension$ExtensionType;

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->IMMUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->MUTABLE:Lcom/google/protobuf/Extension$ExtensionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/protobuf/Extension$ExtensionType;->PROTO1:Lcom/google/protobuf/Extension$ExtensionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/protobuf/Extension$ExtensionType;->$VALUES:[Lcom/google/protobuf/Extension$ExtensionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/Extension$ExtensionType;
    .locals 1
    .parameter "name"

    .prologue
    .line 37
    const-class v0, Lcom/google/protobuf/Extension$ExtensionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Extension$ExtensionType;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/Extension$ExtensionType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/google/protobuf/Extension$ExtensionType;->$VALUES:[Lcom/google/protobuf/Extension$ExtensionType;

    invoke-virtual {v0}, [Lcom/google/protobuf/Extension$ExtensionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/Extension$ExtensionType;

    return-object v0
.end method