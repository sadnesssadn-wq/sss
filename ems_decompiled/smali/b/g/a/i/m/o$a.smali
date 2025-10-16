.class public final enum Lb/g/a/i/m/o$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/a/i/m/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/g/a/i/m/o$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb/g/a/i/m/o$a;

.field public static final enum d:Lb/g/a/i/m/o$a;

.field public static final enum e:Lb/g/a/i/m/o$a;

.field public static final enum f:Lb/g/a/i/m/o$a;

.field public static final synthetic g:[Lb/g/a/i/m/o$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lb/g/a/i/m/o$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/g/a/i/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/a/i/m/o$a;->c:Lb/g/a/i/m/o$a;

    new-instance v1, Lb/g/a/i/m/o$a;

    const-string v3, "START"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/g/a/i/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/g/a/i/m/o$a;->d:Lb/g/a/i/m/o$a;

    new-instance v3, Lb/g/a/i/m/o$a;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/g/a/i/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/g/a/i/m/o$a;->e:Lb/g/a/i/m/o$a;

    new-instance v5, Lb/g/a/i/m/o$a;

    const-string v7, "CENTER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb/g/a/i/m/o$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb/g/a/i/m/o$a;->f:Lb/g/a/i/m/o$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lb/g/a/i/m/o$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lb/g/a/i/m/o$a;->g:[Lb/g/a/i/m/o$a;

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

.method public static valueOf(Ljava/lang/String;)Lb/g/a/i/m/o$a;
    .locals 1

    const-class v0, Lb/g/a/i/m/o$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/g/a/i/m/o$a;

    return-object p0
.end method

.method public static values()[Lb/g/a/i/m/o$a;
    .locals 1

    sget-object v0, Lb/g/a/i/m/o$a;->g:[Lb/g/a/i/m/o$a;

    invoke-virtual {v0}, [Lb/g/a/i/m/o$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/a/i/m/o$a;

    return-object v0
.end method
