#!/usr/bin/python3
from leonardo_api import Leonardo

leonardo = Leonardo(auth_token='eb36c72b-8bc7-4da4-bd40-bd90664c07a5')

response = leonardo.post_generations(prompt="Little pig building a hay house.8bit", num_images=1,
                                           width=1024, height=768,
                                           guidance_scale=7)

idimage = leonardo.wait_for_image_generation(generation_id=response['sdGenerationJob']['generationId'])

postapi = []
with open('leonardo_async.log', 'r') as filename:
    for line in filename:
        postapi.append(line)
    postapi.reverse()
    while 1:
        if len(postapi) != 1:
            postapi.pop()
        else:
            break
    print(postapi)
    alpha = postapi[0]
    betta = alpha.split("{'generated_images': [{'url': ")
    charly = betta[1]
    delta = charly.split(", 'nsfw': False")
    url = delta[0]
    print(url)