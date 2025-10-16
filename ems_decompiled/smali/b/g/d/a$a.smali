.class public final enum Lb/g/d/a$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/g/d/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lb/g/d/a$a;

.field public static final enum d:Lb/g/d/a$a;

.field public static final enum e:Lb/g/d/a$a;

.field public static final enum f:Lb/g/d/a$a;

.field public static final enum g:Lb/g/d/a$a;

.field public static final enum h:Lb/g/d/a$a;

.field public static final enum i:Lb/g/d/a$a;

.field public static final enum j:Lb/g/d/a$a;

.field public static final synthetic k:[Lb/g/d/a$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lb/g/d/a$a;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/g/d/a$a;->c:Lb/g/d/a$a;

    new-instance v1, Lb/g/d/a$a;

    const-string v3, "FLOAT_TYPE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lb/g/d/a$a;->d:Lb/g/d/a$a;

    new-instance v3, Lb/g/d/a$a;

    const-string v5, "COLOR_TYPE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lb/g/d/a$a;->e:Lb/g/d/a$a;

    new-instance v5, Lb/g/d/a$a;

    const-string v7, "COLOR_DRAWABLE_TYPE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lb/g/d/a$a;->f:Lb/g/d/a$a;

    new-instance v7, Lb/g/d/a$a;

    const-string v9, "STRING_TYPE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lb/g/d/a$a;->g:Lb/g/d/a$a;

    new-instance v9, Lb/g/d/a$a;

    const-string v11, "BOOLEAN_TYPE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lb/g/d/a$a;->h:Lb/g/d/a$a;

    new-instance v11, Lb/g/d/a$a;

    const-string v13, "DIMENSION_TYPE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lb/g/d/a$a;->i:Lb/g/d/a$a;

    new-instance v13, Lb/g/d/a$a;

    const-string v15, "REFERENCE_TYPE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lb/g/d/a$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lb/g/d/a$a;->j:Lb/g/d/a$a;

    const/16 v15, 0x8

    new-array v15, v15, [Lb/g/d/a$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lb/g/d/a$a;->k:[Lb/g/d/a$a;

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

.method public static valueOf(Ljava/lang/String;)Lb/g/d/a$a;
    .locals 1

    const-class v0, Lb/g/d/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/g/d/a$a;

    return-object p0
.end method

.method public static values()[Lb/g/d/a$a;
    .locals 1

    sget-object v0, Lb/g/d/a$a;->k:[Lb/g/d/a$a;

    invoke-virtual {v0}, [Lb/g/d/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/g/d/a$a;

    return-object v0
.end method
