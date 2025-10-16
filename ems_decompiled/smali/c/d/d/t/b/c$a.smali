.class public final enum Lc/d/d/t/b/c$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/d/d/t/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/d/t/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/d/d/t/b/c$a;

.field public static final enum d:Lc/d/d/t/b/c$a;

.field public static final enum e:Lc/d/d/t/b/c$a;

.field public static final enum f:Lc/d/d/t/b/c$a;

.field public static final enum g:Lc/d/d/t/b/c$a;

.field public static final enum h:Lc/d/d/t/b/c$a;

.field public static final enum i:Lc/d/d/t/b/c$a;

.field public static final synthetic j:[Lc/d/d/t/b/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lc/d/d/t/b/c$a;

    const-string v1, "PAD_ENCODE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/d/t/b/c$a;->c:Lc/d/d/t/b/c$a;

    new-instance v1, Lc/d/d/t/b/c$a;

    const-string v3, "ASCII_ENCODE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/d/d/t/b/c$a;->d:Lc/d/d/t/b/c$a;

    new-instance v3, Lc/d/d/t/b/c$a;

    const-string v5, "C40_ENCODE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/d/d/t/b/c$a;->e:Lc/d/d/t/b/c$a;

    new-instance v5, Lc/d/d/t/b/c$a;

    const-string v7, "TEXT_ENCODE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/d/d/t/b/c$a;->f:Lc/d/d/t/b/c$a;

    new-instance v7, Lc/d/d/t/b/c$a;

    const-string v9, "ANSIX12_ENCODE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc/d/d/t/b/c$a;->g:Lc/d/d/t/b/c$a;

    new-instance v9, Lc/d/d/t/b/c$a;

    const-string v11, "EDIFACT_ENCODE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lc/d/d/t/b/c$a;->h:Lc/d/d/t/b/c$a;

    new-instance v11, Lc/d/d/t/b/c$a;

    const-string v13, "BASE256_ENCODE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lc/d/d/t/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lc/d/d/t/b/c$a;->i:Lc/d/d/t/b/c$a;

    const/4 v13, 0x7

    new-array v13, v13, [Lc/d/d/t/b/c$a;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lc/d/d/t/b/c$a;->j:[Lc/d/d/t/b/c$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/d/d/t/b/c$a;
    .locals 1

    const-class v0, Lc/d/d/t/b/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/d/t/b/c$a;

    return-object p0
.end method

.method public static values()[Lc/d/d/t/b/c$a;
    .locals 1

    sget-object v0, Lc/d/d/t/b/c$a;->j:[Lc/d/d/t/b/c$a;

    invoke-virtual {v0}, [Lc/d/d/t/b/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/d/t/b/c$a;

    return-object v0
.end method
